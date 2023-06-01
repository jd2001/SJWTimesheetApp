class ClientBillingType < ApplicationRecord
  belongs_to :billing_type
  belongs_to :client
end