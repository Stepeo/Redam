class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.integer :amount

      t.timestamps
    end
  end
end
