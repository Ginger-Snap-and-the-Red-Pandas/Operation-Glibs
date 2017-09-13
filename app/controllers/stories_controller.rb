class StoriesController < ApplicationController

  # def new
  #   @story = Story.new
  #   render "new"
  # end

  def create

    p "BEANS is ADORABLE" * 20
    p params

    @story = Story.new(story_params)
    @genre = Genre.find(params[:genre_id])
    @script = Script.find(params[:script_id])
    @scenes = @script.scenes

    #Assign story attributes, so the story can be saved
    @story.genre = @genre
    @story.script = @script
    @story.public = true if public_params[:public] == "1"


    #Save that story!...finally, so nice
    if @story.save


      # Photo saving logic!...place this into a helper method!!!
      @photo1 = Picture.new(picture_params(picture_params_one))
      @photo2 = Picture.new(picture_params(picture_params_two))
      @photo3 = Picture.new(picture_params(picture_params_three))
      @photos = [@photo1, @photo2, @photo3]
      @photos.length.times do |i|
        photo = @photos[i]
        photo.story=@story
        photo.scene=@scenes[i]
        photo.url = photo.image.url(:glib)
        photo.save
        photo.url = photo.image.url(:glib)
        photo.save
        @photos[i] = photo
      end


      # Tells us if Josh, the user, or MS screwed up the api call
      labeled_tags = josh_api_screwup(@photos)

      #If Josh screwed up, explains the issue to the user and re-renders form
      if labeled_tags.is_a? String
        @story.destroy
        @story = Story.new
        @script_scenes_dialogues = blank_glibs_for_script_show(@script)
        return render 'scripts/show'
      end

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

    def public_params
      params.require(:story).permit(:public)
    end

    def picture_params(picture_params_number)
      final_params = {}
      final_params[:image] = picture_params_number[:image1] || picture_params_number[:image2] || picture_params_number[:image3]
      final_params
    end

    def picture_params_one
      params.require("story").permit(:image1)
    end

    def picture_params_two
      params.require("story").permit(:image2)
    end

    def picture_params_three
      params.require("story").permit(:image3)
    end
end
