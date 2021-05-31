class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.uuid :to, foreign_key: true
      t.uuid :from, foreign_key: true
      t.jsonb :meta

      t.timestamps
    end
  end
end
