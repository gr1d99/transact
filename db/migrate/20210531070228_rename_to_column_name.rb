class RenameToColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :transactions, :to, :to_id
  end
end
