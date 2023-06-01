class BillingType < ApplicationRecord
  has_many :transactions
  has_many :client_billing_types
end
