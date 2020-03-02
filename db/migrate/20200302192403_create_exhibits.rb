class CreateExhibits < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibits do |t|
      t.string :name
      t.text :description
      t.string :start_date
      t.string :end_date
      t.string :cost
      t.integer :interest_count
      t.integer :museum_id

      t.timestamps
    end
  end
end
