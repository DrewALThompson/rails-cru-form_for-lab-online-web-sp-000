class SongsController < ApplicationController

  private
  
    def song_finder
      @song = Song.find(params[:id])
    end
  
    def song_params(*args)
      params.require(:song).permit(*args)
    end

end