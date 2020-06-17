class FactureController < ApplicationController
  def index
  end

  def show
  	@facture_show = Facture.find(params[:id])
  end

  def new
  	@new_facture = Facture.new
  end

  def create
  	Facture.create(params_facture)
  end

  def edit
  	@facture_to_edit = Facture.find(params[:id])
  end

  def update
  	@facture_to_edit = Facture.find(params[:id])
  	@facture_to_edit.update(params_facture)
  end

  private

  def params_facture
  	params.require(:facture).permit(:bill_sender_id, :bill_recipient_id, :client_id, :total_price, :month, :TVA, :xlsx_data, :advance_payment, :updated_at)
  	
  end

end
