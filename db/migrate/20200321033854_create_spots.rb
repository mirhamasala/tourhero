class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name
      t.text   :description
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
