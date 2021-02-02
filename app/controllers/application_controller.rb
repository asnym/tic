class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :show, :search]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:code, :name])
  end
end
