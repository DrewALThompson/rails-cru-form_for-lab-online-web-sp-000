class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def song_params(*args)
    params.require(:song).permit(*args)
  end
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
    
end
