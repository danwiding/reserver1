class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :current_owner

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:owner) 
  end

  def after_sign_in_path_for(owners)
    restaurants_path
  end

  def after_sign_out_path_for(owners)
    new_owner_session_path
  end

end
