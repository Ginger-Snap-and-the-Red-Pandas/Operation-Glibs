class GenresController < ApplicationController

  def index
    @genres = Genre.all
    @story = Story.where(public: :true).sample
  end



end
