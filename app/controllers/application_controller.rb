class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    groups_path if resource.is_a?(User)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email password password_confirmation name])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
  end
end
