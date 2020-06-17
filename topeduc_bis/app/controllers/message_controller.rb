class MessageController < ApplicationController
  def index

  	@all_current_user_received_messages = current_user.received_messages.all
  	@all_current_user_sent_messages = current_user.sent_messages.all
  	
  end

  def show
  end

  def new
  	@new_message = Message.new
  end

  def create
  	Message.create(params_message)
  	redirect_to static_secret_page_path
  end

  def edit
  	@message_to_edit = Message.find(params[:id])
  	@sender_id = User.find(Message.find(params[:id]).sender_id).email
  	@recipient_id = User.find(Message.find(params[:id]).recipient_id).email
  	@message_title = Message.find(params[:id]).title
  	@message_body = Message.find(params[:id]).body
  end

  def update
  	@message_to_update = Message.find(params[:id])
  	@message_to_update.update(params_message)
  end

  def destroy

  	@message_to_delete = Message.find(params[:id])
  	@message_to_delete.delete
  	redirect_to static_secret_page_path
  	
  end
  private

  def params_message

  	params.require(:message).permit(:title, :body, :sender_id, :recipient_id, :read?)
  	
  end
end
