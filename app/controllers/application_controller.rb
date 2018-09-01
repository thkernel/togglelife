class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:login, profile_attributes: [ :gender, :birth_date, :city, :country ]])
		devise_parameter_sanitizer.permit(:account_update, keys: [ :login])
	end
end
