class StoriesController < ApplicationController

  def new
    @story = Story.new
    render "new"
  end

  def create
    @story = Story.new
    @genre = Genre.first
    @story.genre = @genre
    @story.script = @genre.script.sample
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
