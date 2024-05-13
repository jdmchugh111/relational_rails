class ArtistsController < ApplicationController

    def index
        @artists = Artist.where(headliner: true)
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @festival = Festival.find(params[:id])
    end

    def create
        festival = Festival.find(params[:id])
        artist = Artist.new({
            name: params[:name],
            performers: params[:performers],
            headliner: params[:headliner],
            festival_id: festival.id
            })
        artist.save
        redirect_to "/festivals/#{festival.id}/artists"
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist = Artist.find(params[:id])
        artist.update({
            name: params[:name],
            performers: params[:performers],
            headliner: params[:headliner]
            })
        artist.save
        redirect_to "/artists/#{artist.id}"
    end
end