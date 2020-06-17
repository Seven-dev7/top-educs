class RibController < ApplicationController
  
  def new

  	@new_rib = Rib.new
  end

  def create
  	Rib.create(params_rib)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@rib_to_edit = Rib.find_by(user_id: current_user.id)
  end

  def update
  	@rib_to_edit = Rib.find_by(user_id: current_user.id)
  	@rib_to_edit.update(params_rib)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@current_user_rib = Rib.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@rib_to_destroy = Rib.find_by(user_id: current_user.id)
  	@rib_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_rib

  	params.require(:rib).permit(:image, :user_id, :title)
  	
  end
end
