class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end 
  
  def show 
    artist_finder
  end 
  
  def new
    @artist = Artist.new
  end 
  
  def create
    @artist = Artist.new(artist_params(:name, :bio))
  
  private
  
    def artist_finder
      @artist = Artist.find(params[:id])
    end
  
    def artist_params(*args)
      params.require(:artist).permit(*args)
    end

end