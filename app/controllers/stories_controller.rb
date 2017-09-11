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

      @picture_one = Picture.create(story: @story, scene: @scenes[0], url: picture_params[:url1])
      @picture_two = Picture.create(story: @story, scene: @scenes[1], url: picture_params[:url2])
      @picture_three = Picture.create(story: @story, scene: @scenes[2], url: picture_params[:url3])

      @photos = [@picture_one, @picture_two, @picture_three]


      #analyze our photos
      labeled_tags = []
      josh = 1
      josh_error = ""
      @error = nil
      @photos.each do |photo|
        photo_details = AnalyzableHelper.picling(photo.url)
        if photo_details.is_a? String
          josh_error << josh.to_s + " "
          @error = "Photo(s) # #{josh_error}may be too large...or the contractors MS sent us to process photos are on break and you should try again. See if your photo is larger than 4mb, otherwise try again...or give up. Whatever -Your Friends at Team GLIBS"
        end
        labeled_tags << photo_details
        josh += 1
      end

      if @error
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
