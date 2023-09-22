class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def require_admin
    redirect_to root_path, alert: 'アクセス権限がありません。' unless current_user&.admin?
  end
end
