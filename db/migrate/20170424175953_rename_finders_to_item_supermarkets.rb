class RenameFindersToItemSupermarkets < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :finders, :item_supermarket
  end

  def self.down
    rename_table :item_supermarket, :finders
  end
end
