class AddAmountToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :amount, :string
  end
end
