class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :account

      t.string :name
      t.string :address
      t.integer :price
      t.integer :area
      t.integer :rooms
      t.integer :bathrooms
      t.string :description
      t.string :image

      t.timestamps
    end

  end
end
