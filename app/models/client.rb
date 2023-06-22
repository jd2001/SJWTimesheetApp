class Client < ApplicationRecord
  has_many :transactions, dependent: :destroy
  has_many :client_billing_types, dependent: :destroy

  accepts_nested_attributes_for :client_billing_types
end
