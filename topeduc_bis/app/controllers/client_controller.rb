class ClientController < ApplicationController
  def index
  	@all_clients = Client.all
  end

  def show
  	@client_to_show = Client.find(params[:id])
  end

  def edit
  	@client_to_edit = Client.find(params[:id])
  end

  def update
  	@client_to_edit = Client.find(params[:id])
  	@client_to_edit.update(params_client)
  end

  def new
  	@new_client = Client.new
  end

  def create
  	Client.create(params_client)
  end

  def destroy
  	@client_to_destroy = Client.find(params[:id])
  	@client_to_destroy.delete
  	
  end

  private

  def params_client
  	params.require(:client).permit(:name, :n_tva, :n_siret, :address ,:zip_code)
  end
end
