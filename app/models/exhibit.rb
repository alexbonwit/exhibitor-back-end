class Exhibit < ApplicationRecord
    has_many :exhibitArtists
    has_many :artists, through: :exhibitArtists
    belongs_to :museum
end
