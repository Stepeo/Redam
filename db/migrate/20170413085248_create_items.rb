class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.decimal :amount
      t.string :measure

      t.timestamps
    end
  end
end
