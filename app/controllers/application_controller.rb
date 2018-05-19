class ApplicationController < ActionController::Base
 # protect_from_forgery with: :exception
 
 before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :grade])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :grade])
  end
 
 def after_sign_in_path_for(user)
  "http://localhost:3000/home/index"
end


end
