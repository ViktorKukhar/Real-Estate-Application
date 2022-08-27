class AddKindToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :kind, :string
  end
end
