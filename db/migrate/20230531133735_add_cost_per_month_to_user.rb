class AddCostPerMonthToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :cost_per_hour, :decimal
  end
end
