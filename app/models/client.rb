class Client < ApplicationRecord
  has_many :transactions, dependent: :destroy
  has_many :client_billing_types, dependent: :destroy
end
