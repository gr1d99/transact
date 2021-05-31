class RenameFromColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :transactions, :from, :from_id
  end
end
