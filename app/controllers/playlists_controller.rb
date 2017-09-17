class PlaylistsController < ApplicationController
  def index
      #here the values that we will share with view index
      #we add all the playlist object to instanceVariable
      @playlists = Playlist.all
  end

  def show

    @playlist = Playlist.find(params[:id])
  end

  def new
    @playlist = Playlist.new
    #en la vista crear un formulario para crear una nueva lista
  end

  def create
    #manda llamar a playlist_params para solo aceptar los parametros requeridos
    @playlist = Playlist.new(playlist_params)

    if @playlist.save #se valida que fue guardada
      #rails redirecetea a show [id]
      redirect_to @playlist
    else
      #nos va a recargar la pagina de new playlist
      render :new
    end

  end

  def playlist_params
    params.require(:playlist).permit(:name, :number_of_votes)
  end


end
