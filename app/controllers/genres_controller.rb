class GenresController < ApplicationController

  def index
    @genres = Genre.all
    @story = Story.all.sample
  end



end
