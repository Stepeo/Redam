class AddCountryToSupermarkets < ActiveRecord::Migration[5.0]
  def change
    add_column :supermarkets, :country, :string
  end
end
