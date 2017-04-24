class RenameItemRecipeToItemRecipes < ActiveRecord::Migration[5.0]
    def self.up
      rename_table :item_recipe, :item_recipes
    end

    def self.down
      rename_table :item_recipes, :item_recipe
    end
end
