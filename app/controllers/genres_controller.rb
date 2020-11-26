class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end 
  
  def show 
    genre_finder
  end 
  
  def new
    @genre = Genre.new
  end 
  
  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to genre_path(@genre)
  end 
  
  def edit
    genre_finder
  end 
  
  def update
    genre_finder
    @genre.update(genre_params
  end
  
  private
  
    def genre_finder
      @genre = Genre.find(params[:id])
    end
  
    def genre_params
      params.require(:genre).permit(:name)
    end

end