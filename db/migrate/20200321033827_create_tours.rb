class CreateTours < ActiveRecord::Migration[6.0]
  def change
    create_table :tours do |t|
      t.string :name
      t.decimal :price
      t.integer :rating
      t.integer :length
      t.string :level
      t.string :language
      t.string :inclusion

      t.timestamps
    end
  end
end
