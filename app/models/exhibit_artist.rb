class ExhibitArtist < ApplicationRecord
    belongs_to :exhibit 
    belongs_to :artist
end
