class StoriesController < ApplicationController

  def new
    @story = Story.new
    render "new"
  end

  def create
    @story = Story.new
    @genre = Genre.first
    @script = @genre.script.sample
    @scenes = @script.scenes

    #Assign story attributes, so it can later be saved
    @story.genre = @genre
    @story.script = @script

    #analyze our photos
    labeled_tags = []
    @photos.each do |photo|
      labeled_tags << analyze_photo(photo)
    end

    #generate the glibs for all of our scenes
    #Gabe: Trust us, this works. Don't worry about the man behind the curtain.
    #Dillon: "It might work, let's see"
    @scenes.length.times do |i|
      @word_blanks = @scenes[i].word_blanks
      labeled_photo_words = labeled_tags[i][1]
      @word_blanks.each do |word_blank|
        #This method takes in a series of hashed words/tags, then with each word_blank creates a generated word. Each generated word has a story_id of @story.id
        generate_glibs(labeled_photo_words, word_blank, @story)
      end
      i += 1
    end

    #Save that story!...finally, so nice
    if @story.save
      redirect_to @story
    else
      render 'new'
    end
  end


  def show
    @story = Story.find(params[:id])
    redirect_to @story.scenes.first
  end

end
