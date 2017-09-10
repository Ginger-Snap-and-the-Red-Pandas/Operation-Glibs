class ScenesController < ApplicationController


  #This is our sandbox route to see what data we were working with, as well as check the API parsing methods
  # def index
    # @story = Story.new
    # @genre = Genre.first
    # # @pictures = params?
    # @script = @genre.script.sample
    # @scenes = @script.scenes


    # #Create story
    # @story.genre = @genre
    # @story.script = @script

    # AnalyzableHelper.picling("https://images-na.ssl-images-amazon.com/images/I/41dvu0nL%2BLL._SL500_AC_SS350_.jpg")

  #   labeled_tags = []
  #   #Don't know what this is called

  #   @picture_one = Picture.new(url: "https://images-na.ssl-images-amazon.com/images/I/41dvu0nL%2BLL._SL500_AC_SS350_.jpg")
  #   @pictures = []
  #   @pictures << @picture_one
  #   @pictures.each do |picture|
  #     #Maybe turn tags into hash on this line
  #     labeled_tags = AnalyzableHelper.picling(picture.url)

  #   end

  #   @labeled_tags = labeled_tags

  #   p '88' * 88
  #   p labeled_tags

  #   render 'index'
  # end




  def show
    @story = Story.find(params[:story_id])
    @scene = Scene.find(params[:id])
    @dialogue = @scene.dialogue
    # @dialogue[0] =

    @generated_words = @story.generated_words
    @generated_words = @generated_words.sort{|word| word.word_blank.scene_position}
    @generated_words.map!{|generated_word| generated_word.word}

    # @caption = @generated_words[0]

    @dialogue.sub!("*title", @story.name)
    # @dialogue.sub!("*caption", @)

    @generated_words.each do |word|
      @dialogue.sub!("*word", word)
    end

  end


end
