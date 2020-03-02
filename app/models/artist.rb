class Artist < ApplicationRecord
    has_many :exhibitArtists
    has_many :exhibits, through: :exhibitArtists
end
