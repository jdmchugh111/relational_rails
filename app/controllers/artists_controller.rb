class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def show
        @artists = Artist.find(params[:id])
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
end