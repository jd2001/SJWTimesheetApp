class ClientBillingTypesController < ApplicationController
  def create
    @client_billing_type = ClientBillingType.new(client_billing_type_params)
    if @client_billing_type.save
      redirect_to home_path, notice: "Billing type added to client"
    else
      redirect_to home_path, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def client_billing_type_params
    params.require(:client_billing_type).permit(:billing_type_id, :client_id)
  end
end