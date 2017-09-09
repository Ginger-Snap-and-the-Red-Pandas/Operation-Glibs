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

    #Create story
    @story.genre = @genre
    @story.script = @script

    labeled_tags = []
    #Don't know what this is called
    @photos.each do |photo|
      #Maybe turn tags into hash on this line
      labeled_tags << analyze_photo(photo)
    end



    @scenes.length.times do |i|
      @word_blanks = @scenes[i].word_blanks
      labeled_photo_words = labeled_tags[i]
      #This method takes in a series of hashed words/tags, then with each word_blank creates a generated word for each one which is also attached to this instance of the story
      generate_glibs(labeled_photo_words, @word_blanks, @story)
      i += 1
    end


    if @story.save
      redirect_to @story
    else
      render 'new'
    end
  end

  def show
    @story = Story.new
    redirect_to @story.scenes.first
  end

end
