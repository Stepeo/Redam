class RenameItemSupermarketToItemSupermarkets < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :item_supermarket, :item_supermarkets
  end

  def self.down
    rename_table :item_supermarkets, :item_supermarket
  end
end
