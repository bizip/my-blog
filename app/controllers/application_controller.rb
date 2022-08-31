class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :update_default_field, if: :devise_controller?

  protected

  def update_default_field
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :photo, :bio, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password) }
  end
end
