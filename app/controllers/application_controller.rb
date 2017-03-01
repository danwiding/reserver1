class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :current_owner
  # before_action :current_user

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:owner)
  # end

  def after_sign_in_path_for(resources)
    if resources == @owner
      restaurants_path
    else
      list_restaurants_path
    end
  end

  def after_sign_out_path_for(resources)
    if resources == @owner
      root_path
    else
      root_path
    end
  end

  # def after_sign_in_path_for(users)
  #   reservations_path(users)
  # end
  #
  # def after_sign_out_path_for(users)
  #   new_user_session_path(users)
  # end

end
