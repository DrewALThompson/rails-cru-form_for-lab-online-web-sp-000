class SongsController < ApplicationController
  
  def index
    @songs = Song.all
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
  
    def song_finder
      @song = Song.find(params[:id])
    end
  
    def song_params(*args)
      params.require(:song).permit(*args)
    end

end