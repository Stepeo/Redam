class RenameIngrediantizationsToItemRecipe < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :ingrediantizations, :item_recipe
  end

  def self.down
    rename_table :item_recipe, :ingrediantizations
  end
end
