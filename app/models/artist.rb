class Artist < ApplicationRecord
    has_many :exhibit_artists
    has_many :exhibits, through: :exhibit_artists
end
