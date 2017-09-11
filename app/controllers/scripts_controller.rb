class ScriptsController < ApplicationController

  def index
    @genre = Genre.find(params[:genre_id])
    @scripts = @genre.scripts
  end

  def show

  end


end
