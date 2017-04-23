class CreateFinders < ActiveRecord::Migration[5.0]
  def change
    create_table :finders do |t|
      t.references :item, foreign_key: true
      t.references :supermarket, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
