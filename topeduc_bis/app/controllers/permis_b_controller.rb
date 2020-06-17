class PermisBController < ApplicationController
  def new
  	@new_permis_b = PermisB.new
  end

  def create
  	PermisB.create(params_permis_b)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@permis_b_to_edit = PermisB.find_by(user_id: current_user.id)
  end

  def update
  	@permis_b_to_edit = PermisB.find_by(user_id: current_user.id)
  	@permis_b_to_edit.update(params_permis_b)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@current_user_permis_b = PermisB.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@permis_b_to_destroy = PermisB.find_by(user_id: current_user.id)
  	@permis_b_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_permis_b

  	params.require(:permis_b).permit(:image, :user_id, :title, :recto)
  	
  end
end
