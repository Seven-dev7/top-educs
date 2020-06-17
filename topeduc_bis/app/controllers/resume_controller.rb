class ResumeController < ApplicationController
  def new

  	@new_resume = Resume.new
  end

  def create
  	Resume.create(params_resume)
  	redirect_to(static_secret_page_path)
  end

  def edit
  	@resume_to_edit = Resume.find_by(user_id: current_user.id)
  end

  def update
  	@resume_to_edit = Resume.find_by(user_id: current_user.id)
  	@resume_to_edit.update(params_resume)
  	redirect_to(static_secret_page_path)
  end

  def show
  	@resume_current_user = Resume.find_by(user_id: current_user.id).image_url
  end

  def destroy
  	@resume_to_destroy = Resume.find_by(user_id: current_user.id)
  	@resume_to_destroy.delete
  	redirect_to(static_secret_page_path)
  end

  private

  def params_resume

  	params.require(:resume).permit(:image, :user_id, :title)
  	
  end
end
