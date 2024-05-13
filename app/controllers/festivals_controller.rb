class FestivalsController < ApplicationController
    def index
        @festivals = Festival.order(created_at: :desc)
    end

    def show
        @festival = Festival.find(params[:id])
        @artists = Artist.all
    end

    def show_artists
        @festival = Festival.find(params[:id])
        @artists = Artist.all
    end

    def new
    end

    def create
        festival = Festival.new({
            name: params[:name],
            location: params[:location],
            stages: params[:stages],
            age_restricted: params[:age_restricted]
            })
        festival.save
        redirect_to '/festivals'
    end
end