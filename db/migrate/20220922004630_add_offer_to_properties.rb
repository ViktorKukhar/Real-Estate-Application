class AddOfferToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :offer, :string
  end
end
