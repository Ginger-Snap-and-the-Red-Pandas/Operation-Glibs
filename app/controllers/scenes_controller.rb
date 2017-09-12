class ScenesController < ApplicationController

  def show
    @story = Story.find(params[:story_id])
    @scene = Scene.find(params[:id])
    @scenes = @story.scenes
    @previous_scene = @scene.previous
    @next_scene = @scene.next
    @photo = @story.pictures.find_by(scene: @scene)
    @dialogue = fill_glibs_for_scene_show(@story, @scene)
  end


end
