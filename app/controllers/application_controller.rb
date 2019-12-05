class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || dashboard_path
  end

    def after_sign_up_path_for(resource)
    stored_location_for(resource) || dashboard_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password,
      :password_confirmation, :remember_me, :photo, :photo_cache, :remove_photo) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password,
      :password_confirmation, :current_password, :photo, :photo_cache, :remove_photo) }
  end
end
