class Transaction < ApplicationRecord
  has_one :client
  has_one :billing_type
  has_one :user
end
