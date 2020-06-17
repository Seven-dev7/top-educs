class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		attributes = [:first_name, :last_name, :email, :phone, :job, :nationality, :password, :password_confirmation, :availability]
		devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(attributes)}
		devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(attributes)}  
	end
end
