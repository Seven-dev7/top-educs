class KbiController < ApplicationController
  
  def new

  	@new_kbis = Kbi.new
  end

  def create
  	Kbi.create(params_kbis)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@kbis_to_edit = Kbi.find_by(user_id: current_user.id)
  end

  def update
  	@kbis_to_edit = Kbi.find_by(user_id: current_user.id)
  	@kbis_to_edit.update(params_kbis)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@current_user_kbis = Kbi.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@kbis_to_destroy = Kbi.find_by(user_id: current_user.id)
  	@kbis_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_kbis

  	params.require(:kbi).permit(:image, :user_id, :title)
  	
  end

end
