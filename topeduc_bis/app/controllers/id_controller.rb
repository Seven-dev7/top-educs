class IdController < ApplicationController
  
  def new
  	@new_id = Id.new
  end

  def create
  	Id.create(params_id)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@id_to_edit = Id.find_by(user_id: current_user.id)
  end

  def update
  	@id_to_edit = Id.find_by(user_id: current_user.id)
  	@id_to_edit.update(params_id)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@current_user_id = Id.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@id_to_destroy = Id.find_by(user_id: current_user.id)
  	@id_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_id

  	params.require(:id).permit(:image, :user_id, :title, :recto)
  	
  end
end
