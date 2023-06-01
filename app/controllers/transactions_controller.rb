class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to transactions_path(user_id: @transaction.user_id), notice: 'Transaction created'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @transaction = Transaction.find(params[:id])
  end

  def update
    @transaction = Transaction.find(params[:id])
    if @transaction.update(transaction_params)
      redirect_to transactions_path(user_id: @transaction.user_id), notice: 'Transaction updated'
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def transaction_params
    params.require(:transaction).permit(:additional_info, :cost_per_hour, :billing_type_id, :client_id, :user_id)
  end
end
