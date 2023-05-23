class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.decimal :cost_per_hour
      t.text :additional_info

      t.timestamps
    end
  end
end
