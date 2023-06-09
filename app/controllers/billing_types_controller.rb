class BillingTypesController < ApplicationController
  def new
    @billing_type = BillingType.new
  end

  def create
    @billing_type = BillingType.new(billing_type_params)
    if @billing_type.save
      redirect_to home_path, notice: 'Billing type added'
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def new
    @billing_type = BillingType.find(params[:id])
  end

  def update
    @billing_type = BillingType.find(params[:id])
    if @billing_type.save
      redirect_to home_path, notice: 'Billing type added'
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def destroy
    @billing_type = BillingType.find(params[:id])
    if @billing_type.destroy
      redirect_to home_path, notice: "Billing type deleted"
    else
      render home_path
    end
  end

  private

  def billing_type_params
    params.require(:billing_type).permit(:name)
  end
end
