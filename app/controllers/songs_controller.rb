class SongsController < ApplicationController
  def show
    @song = Song.find_by id: params[:id]
  end
  def new
  end
  def create
      @song = Song.new song_params
      if @song.save
        redirect_to @song
      else
        render json: {result: false, song: @song.errors}, status: :unprocessable_entity
      end
  end

  private

  def song_params
   params.permit(:name, :picture)
  end
end
