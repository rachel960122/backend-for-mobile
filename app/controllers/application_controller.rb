class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  :null_session  
  before_action :configure_permitted_parameters, if: :devise_controller?


  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  include ActionController::RequestForgeryProtection


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:sign_up) << :location
    devise_parameter_sanitizer.for(:sign_up) << :interest
    devise_parameter_sanitizer.for(:sign_up) << :category_id
    devise_parameter_sanitizer.for(:account_update) << :username
    devise_parameter_sanitizer.for(:account_update) << :location
    devise_parameter_sanitizer.for(:account_update) << :interest
    devise_parameter_sanitizer.for(:account_update) << :category_id
  end
end
