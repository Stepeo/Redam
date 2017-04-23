class RemoveHousenumberFromSupermarkets < ActiveRecord::Migration[5.0]
  def change
    remove_column :supermarkets, :housenumber, :integer
  end
end
