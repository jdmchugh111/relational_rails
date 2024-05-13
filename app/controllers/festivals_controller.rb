class FestivalsController < ApplicationController
    def index
        @festivals = Festival.all
    end

    def show
        @festival = Festival.find(params[:id])
    end

    def show_artists
        @festival = Festival.find(params[:id])
        @artists = Artist.all
    end
end