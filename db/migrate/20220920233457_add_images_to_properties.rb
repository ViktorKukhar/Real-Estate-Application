class AddImagesToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :images, :string
  end
end
