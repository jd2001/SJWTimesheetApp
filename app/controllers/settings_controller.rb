class SettingsController < ApplicationController
  def home
    @billing_types = BillingType.all
    @clients = Client.all
  end
end
