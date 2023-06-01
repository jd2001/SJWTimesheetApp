class Client < ApplicationRecord
  has_many :billing_types
  has_many :client_billing_types
end
