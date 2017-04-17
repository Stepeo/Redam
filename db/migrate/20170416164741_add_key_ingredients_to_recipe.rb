class AddKeyIngredientsToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :ingredients, :string, array: true, :default => []
  end
end
