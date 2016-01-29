class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :owner
      t.string :city
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :image
      t.string :property_type
      t.timestamps null: false
    end
  end
end
