class ArtistsController < ApplicationController

  private
  
  def artist_finder
    @artist = Artist.find(params[:id])
  end
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end