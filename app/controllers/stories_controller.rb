class StoriesController < ApplicationController

  # def new
  #   @story = Story.new
  #   render "new"
  # end

  def create

    @story = Story.new(story_params)
    @genre = Genre.find(params[:genre_id])
    @script = Script.find(params[:script_id])
    @scenes = @script.scenes

    #Assign story attributes, so the story can be saved
    @story.genre = @genre
    @story.script = @script

    #Save that story!...finally, so nice
    p "$" * 45
    p params
    if @story.save
      p "$%" * 45
      @photo1 = Picture.new(picture_params)
      @photo1.story=@story
      @photo1.scene=@scenes[0]
            p "$^&" * 45
      p @photo1.image.url
            p "$^&" * 45
      @photo1.url=@photo1.image.url
      p @photo1.valid?
      p @photo1.errors.full_messages
      @photo1.save
      p "$^" * 45
      #
      # @photo2 = Picture.new(picture_params[:image2])
      # @photo3 = Picture.new(picture_params[:image3])

      @image_files = [@photo1.image.url]#, @photo2.image.url, @photo3.image.url]
      # @photos = create_story_pictures(@story, @scenes, @image_files)

      # Tells us if Josh, the user, or MS screwed up the api call
      @photos = [@photo1]
      labeled_tags = josh_api_screwup(@photos)

      # If Josh screwed up, explains the issue to the user and re-renders form
      # if labeled_tags.is_a? String
      #   @story.destroy
      #   @story = Story.new
      #   @script_scenes_dialogues = blank_glibs_for_script_show(@script)
      #   return render 'scripts/show'
      # end

      ### Generate the glibs for all of our scenes!!!
      #Gabe: Trust us, this works. Don't worry about the man behind the curtain.
      #Dillon: "It might work, let's see"
      create_story_generated_words(labeled_tags, @scenes, @story)

      redirect_to @story
    else
      @script_scenes_dialogues = blank_glibs_for_script_show(@script)
      render 'scripts/show'
    end


#
  end


  def show
    @story = Story.find(params[:id])
    redirect_to story_scene_path(@story, @story.scenes.first)
  end

  private
    def story_params
      params.require(:story).permit(:name)
    end

    def picture_params
      params.require(:story).permit(:image)#1, :image2, :image3)
    end

end
