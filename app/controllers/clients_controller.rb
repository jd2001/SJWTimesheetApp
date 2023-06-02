class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to home_path, notice: 'Client added'
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.save
      redirect_to home_path, notice: 'Client updated'
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def destroy
    @client = Client.find(params[:id])
    if @client.destroy
      redirect_to home_path, notice: "Client deleted"
    else
      render home_path
    end
  end

  private

  def client_params
    params.require(:client).permit(:name)
  end
end
