class BillingType < ApplicationRecord
  has_many :transactions
  has_many :clients
end
