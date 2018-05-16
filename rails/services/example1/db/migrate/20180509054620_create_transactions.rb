class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.bigint :account_id, null: false

      t.integer :quantity, null: false

      t.timestamps
    end

    add_foreign_key :transactions, :accounts

    add_index :transactions, :account_id
  end
end
