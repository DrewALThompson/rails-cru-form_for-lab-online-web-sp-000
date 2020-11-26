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
    @artist.save
    redirect_to artist_path(@artist)
  end 
  
  def edit
    artist_finder
  end 
  
  def update
    artist_finder
    @artist.update(artist_params(:name, :bio))
  end
  
  private
  
    def artist_finder
      @artist = Artist.find(params[:id])
    end
  
    def artist_params(*args)
      params.require(:artist).permit(*args)
    end

end