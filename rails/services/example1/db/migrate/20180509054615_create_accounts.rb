class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.bigint :client_id, null: false

      t.timestamps
    end

    add_foreign_key :accounts, :clients

    add_index :accounts, :client_id
  end
end
