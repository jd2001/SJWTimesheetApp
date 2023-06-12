class AddHoursToTransactions < ActiveRecord::Migration[7.0]
  def change
    add_column :transactions, :hours, :decimal
  end
end
