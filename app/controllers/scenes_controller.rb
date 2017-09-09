class ScenesController < ApplicationController
  def show
    @script = Script.find(:script_id)
    @scene = Scene.find(:id)
  end




end