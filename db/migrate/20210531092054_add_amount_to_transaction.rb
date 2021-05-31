class AddAmountToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :amount, :decimal, precision: 12, scale: 2
  end
end
