class DiplomaController < ApplicationController
  
  def new

  	@new_diploma = Diploma.new
  end

  def create
  	Diploma.create(params_diploma)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@diploma_to_edit = Diploma.find_by(user_id: current_user.id)
  end

  def update
  	@diploma_to_edit = Diploma.find_by(user_id: current_user.id)
  	@diploma_to_edit.update(params_diploma)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@current_user_diploma = Diploma.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@diploma_to_destroy = Diploma.find_by(user_id: current_user.id)
  	@diploma_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_diploma

  	params.require(:diploma).permit(:image, :user_id, :title)
  	
  end
end
