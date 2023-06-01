class CreateClientBillingType < ActiveRecord::Migration[7.0]
  def change
    create_table :client_billing_types do |t|
      t.references :billing_type, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
