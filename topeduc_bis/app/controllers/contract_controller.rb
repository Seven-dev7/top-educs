class ContractController < ApplicationController
  def index
  	@all_contracts = Contract.all
  end

  def show
  	@contract = Contract.find(params[:id])
  end

  def new

  	@new_contract = Contract.new

  end

  def create

  	Contract.create(params_contract)
  	
  end

  def edit
  end

  private

  def params_contract

  	params.require(:contract).permit(:user_id, :request_id, :starts_at, :ends_at, :hourly_rate, :adress, :ZIP_CODE, :client, :job, :comments)
  	
  end
end
