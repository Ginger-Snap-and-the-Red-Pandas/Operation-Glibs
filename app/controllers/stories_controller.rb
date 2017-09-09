class StoriesController < ApplicationController

  def new
    @story = Story.new
    render "new"
  end

  def create
    @story = Story.new
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