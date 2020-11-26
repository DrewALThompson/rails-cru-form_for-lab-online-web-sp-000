class GenresController < ApplicationController

  private
  
    def genre_finder
      @genre = Genre.find(params[:id])
    end
  
    def genre_params
      params.require(:genre).permit(:name)
    end

end