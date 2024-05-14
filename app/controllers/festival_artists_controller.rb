class FestivalArtistsController < ApplicationController

    def index
        @festival = Festival.find(params[:id])

        if params[:sort] == "alpha"
            @artists = Artist.order(:name)
        elsif params[:threshold].present?
            @artists = Artist.filter(params[:threshold])
        else
            @artists = Artist.all
        end
    end

end