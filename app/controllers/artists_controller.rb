class ArtistsController < ApplicationController
  def index
    @artists = Artist.all

    @song_counts = @artists.map do |artist|
      artist.song_count
    end
  end

  def show
    @song = Song.find_by(artist_id: params[:id])

    @songs = Song.where("artist_id = #{params[:id]}")
    render :show
  end

  def new
    @artist = Artist.new
    binding.pry
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
