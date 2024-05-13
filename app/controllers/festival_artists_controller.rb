class FestivalArtistsController < ApplicationController

    def index
        @festival = Festival.find(params[:id])
        @artists = Artist.all
    end

end