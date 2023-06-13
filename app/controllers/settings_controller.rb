class SettingsController < ApplicationController
  authorize_resource :class => false
  def home
    @billing_types = BillingType.all
    @clients = Client.all
    @page = 'settings'
  end
end
