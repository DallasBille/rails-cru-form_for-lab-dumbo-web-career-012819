class SongsController < ApplicationController

    def index
        @songs = Song.all

    end

    def show
        get_song
    end

    def new
        @song = Song.new
        @artist = Artist.all
        @genre = Genre.all
    end

    def create
        @song = Song.create(get_params)
        redirect_to song_path(@song)
    end

    def edit
        get_song
        @artists = Artist.all
        @genres = Genre.all
    end

    def update
        get_song.update(get_params)
        redirect_to song_path(@song)
    end


    private

    def get_song
        @song = Song.find(params[:id])
    end

    def get_params
        params.require(:song).permit(:artist_id, :genre_id, :name)
    end
end
