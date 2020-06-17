class RequestController < ApplicationController
  
  def index
  	@all_requests = Request.all
  end

  def new
  	@new_request = Request.new
  end

  def create
  	Request.create(params_request)
  end

  def edit
  	@request_to_edit = Request.find_by(user_id: current_user.id) 
  	@request_to_edit_2 = Request.find(params[:id])
  end

  def update
  	@request_to_edit = Request.find_by(user_id: current_user.id)
  	@request_to_edit.update(params_request)
  end

  def show
  	@show_request = Request.find(params[:id])
  end

  def destroy
  	
  end

  private

  def params_request

  	params.require(:request).permit(:user_id, :starts_at, :ends_at, :hourly_rate, :adress, :ZIP_CODE, :client, :driving_licence, :job, :comments, :other, :accepted?, :answer_comments)
  	
  end

end
