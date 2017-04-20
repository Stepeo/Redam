class CreateSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :steps do |t|
      t.text :description
      t.string :items, array: true, default: []
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
