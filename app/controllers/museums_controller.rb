class MuseumsController < ApplicationController
    def index
        museums = Museum.all
        render json: museums, include: :exhibits
    end

    def show
        museum = Museum.find_by(id: params[:id])
        render json: museum.exhibits, include: :artists
    end
end
