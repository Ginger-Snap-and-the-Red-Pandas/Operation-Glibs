class ScenesController < ApplicationController
  def show
    @scene = Scene.find(:id)
    render @scene
  end




end