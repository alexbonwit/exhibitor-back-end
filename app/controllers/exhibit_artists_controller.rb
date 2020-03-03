class ExhibitArtistsController < ApplicationController
    def index
        exhibit_artists = ExhibitArtist.all
        render json: exhibit_artists
    end

    def create
        exhibit_artist = ExhibitArtist.create(exhibit_id: params[:exhibit_id] , artist_id: params[:artist_id] )
    end
end
