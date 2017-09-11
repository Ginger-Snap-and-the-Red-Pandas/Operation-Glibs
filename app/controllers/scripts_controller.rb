class ScriptsController < ApplicationController

  def index
    @genre = Genre.find(params[:genre_id])
    @scripts = @genre.scripts
  end

  def show
    @script = Script.find(params[:id])
    @story = Story.new

    @script_scenes_dialogues = @script.scene_dialogues

    @script_scenes_dialogues.each do |scene_dialogue|
      scene_dialogue.sub!("*title", " your-story-title ")
      scene_dialogue.sub!("*caption", " photo-description-sentence ")
      scene_dialogue.gsub!("*word", " _____ ")
    end

    # Have this go to show page that shows new story form partials

    # render "stories/new"
  end


end
