class ScenesController < ApplicationController

  def show
    @story = Story.find_by(share_url: params[:story_url])
    @scene = Scene.find(params[:id])
    @scenes = @story.scenes
    @previous_scene = @scene.previous
    @next_scene = @scene.next
    @photo = @story.pictures.find_by(scene: @scene)
    if request.xhr?
      @dialogue = fill_style_glibs_for_scene_show(@story, @scene)
      render '_show', layout: false
    else
      @dialogue = fill_glibs_for_scene_show(@story, @scene)
    end
  end

  def end
    @story = Story.find(params[:story_id])
  end

end
