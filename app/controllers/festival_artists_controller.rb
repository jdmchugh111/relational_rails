class FestivalArtistsController < ApplicationController

    def index
        @festival = Festival.find(params[:id])

        if params[:sort] == "alpha"
            @artists = Artist.order(:name)
        else
            @artists = Artist.all
        end
    end

end