class AddUserRefToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_reference :transactions, :user, null: false, foreign_key: true, index: true
    add_reference :transactions, :client, null: false, foreign_key: true, index: true
    add_reference :transactions, :billing_type, null: false, foreign_key: true, index: true
  end
end
