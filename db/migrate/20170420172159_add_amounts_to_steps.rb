class AddAmountsToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :amounts, :string, array: true, default: []
  end
end
