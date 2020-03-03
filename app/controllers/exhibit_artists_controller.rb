class ExhibitArtistsController < ApplicationController
    def index
        exhibit_artist = ExhibitArtist.all
        render json: exhibit_artist.to_json
    end
end
