class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end 
  
  def show 
    song_finder
  end 
  
  def new
    @song = Song.new
  end 
  
  def create
    @song = Song.new(song_params(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end 
  
  def edit
    song_finder
  end 
  
  def update
    song_finder
    @song.update(song_params(:name, :artist_id, :genre_id))
  end

  private
  
    def song_finder
      @song = Song.find(params[:id])
    end
  
    def song_params(*args)
      params.require(:song).permit(*args)
    end

end