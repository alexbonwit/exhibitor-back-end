class ArtistsController < ApplicationController
    def index
        artists = Artist.all.order(id: :desc)
        render json: artists, include: :exhibits
    end

    def show
        artist = Artist.find_by(id: params[:id])
        render json: artist, only: [:id, :name, :bio]
    end

    def create
        artist = Artist.create(name: params[:name], bio: params[:bio])

        render json: artist, only: [:id, :name, :bio]
    end

    def update
        artist = Artist.find_by(name: params[:name])
        artist.update(bio: params[:bio])
        render json: artist, only: [:id, :name, :bio]
    end


end
