class Client < ApplicationRecord
  has_many :billing_types
  has_many :transactions
end
