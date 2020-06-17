class CarteVitaleController < ApplicationController
  
  def new

  	@new_carte_vitale = CarteVitale.new
  end

  def create
  	CarteVitale.create(params_carte_vitale)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@carte_to_edit = CarteVitale.find_by(user_id: current_user.id)
  end

  def update
  	@carte_to_edit = CarteVitale.find_by(user_id: current_user.id)
  	@carte_to_edit.update(params_carte_vitale)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@carte_vitale_current_user = CarteVitale.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@carte_to_destroy = CarteVitale.find_by(user_id: current_user.id)
  	@carte_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_carte_vitale

  	params.require(:carte_vitale).permit(:image, :user_id, :title)
  	
  end
end
