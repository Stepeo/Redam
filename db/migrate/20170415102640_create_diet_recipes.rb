class CreateDietRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :diet_recipes do |t|
      t.references :recipe, foreign_key: true
      t.references :diet, foreign_key: true

      t.timestamps
    end
  end
end
