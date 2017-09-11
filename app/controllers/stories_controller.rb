class StoriesController < ApplicationController

  def new
    @story = Story.new
    render "new"
  end

  def create


    #Write test here, that checks all photo_urls are valid
    # Another Bullet FOR EMPHASIS - DON"T FORGET

    @story = Story.new(story_params)
    @genre = Genre.first
    @script = @genre.scripts.sample
    @scenes = @script.scenes

    #Assign story attributes, so it can later be saved
    @story.genre = @genre
    @story.script = @script


    #Save that story!...finally, so nice
    if @story.save

      @photo_urls = [picture_params[:url1], picture_params[:url2], picture_params[:url3]]
      @photos = create_story_pictures(@story, @scenes, @photo_urls)

      labeled_tags = josh_api_screwup(@photos)


      if labeled_tags.is_a? String
        @story.destroy
        @story = Story.new
        return render 'new'
      end




      ### Generate the glibs for all of our scenes!!!
      #Gabe: Trust us, this works. Don't worry about the man behind the curtain.
      #Dillon: "It might work, let's see"
      @scenes.length.times do |i|
        @word_blanks = @scenes[i].word_blanks
        photo_caption = labeled_tags[i][0]
        labeled_photo_words = labeled_tags[i][1]
        @word_blanks = @word_blanks.to_ary
        @caption_blank = @word_blanks.shift
          #Keep this before generate_glibs in calls, this stores the photos description as the FIRST generated_word for a scene
        store_scene_caption(photo_caption, @caption_blank, @story)
          #This method takes in a series of hashed words/tags, then with each word_blank creates a generated word. Each generated word has a story_id of @story.id
        generate_glibs(labeled_photo_words, @word_blanks, @story)
      end
      redirect_to @story





    else
      render 'new'
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
