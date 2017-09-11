class StoriesController < ApplicationController

  # def new
  #   @story = Story.new
  #   render "new"
  # end

  def create
    p "88" * 88
    p @story
    @story = Story.new(story_params)
    @genre = Genre.first
    @script = @genre.scripts.sample
    @scenes = @script.scenes

    #Assign story attributes, so the story can be saved
    @story.genre = @genre
    @story.script = @script

    #Save that story!...finally, so nice
    if @story.save

      @photo_urls = [picture_params[:url1], picture_params[:url2], picture_params[:url3]]
      @photos = create_story_pictures(@story, @scenes, @photo_urls)

      # Tells us if Josh, the user, or MS screwed up the api call
      labeled_tags = josh_api_screwup(@photos)

      # If Josh screwed up, explains the issue to the user and re-renders form
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
      params.require(:story).permit(:url1, :url2, :url3)
    end

end
