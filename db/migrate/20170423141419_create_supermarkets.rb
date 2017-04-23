class CreateSupermarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :supermarkets do |t|
      t.string :name
      t.string :address
      t.integer :housenumber
      t.string :city
      t.integer :zipcode

      t.timestamps
    end
  end
end
