class Museum < ApplicationRecord
    has_many :exhibits
    has_many :exhibit_artists, through: :exhibits
    has_many :artists, through: :exhibit_artists
end
