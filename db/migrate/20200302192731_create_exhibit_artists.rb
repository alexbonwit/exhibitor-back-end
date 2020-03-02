class CreateExhibitArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibit_artists do |t|
      t.integer :exhibit_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
