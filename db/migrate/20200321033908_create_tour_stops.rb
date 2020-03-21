class CreateTourStops < ActiveRecord::Migration[6.0]
  def change
    create_table :tour_stops do |t|
      t.references :tour, null: false, foreign_key: true
      t.references :spot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
