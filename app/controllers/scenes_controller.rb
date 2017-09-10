class ScenesController < ApplicationController

  def show
    @story = Story.find(params[:story_id])
    @scene = Scene.find(params[:id])
    @scenes = @story.scenes
    @previous_scene = @scene.previous
    @next_scene = @scene.next
    # @photo = @story.scenes.find(params[:id]).pictures.url
    @dialogue = @scene.dialogue
    @photo = @story.pictures.find_by(scene: @scene)


    @generated_words = @story.generated_words.to_ary
    # @generated_words = @generated_words

    @generated_words.map!{|generated_word| generated_word.word}
    @caption = @generated_words.shift

    @dialogue.sub!("*title", @story.name)
    @dialogue.sub!("*caption", @caption)

    @generated_words.each do |word|
      @dialogue.sub!("*word", word)
    end


  end


end
