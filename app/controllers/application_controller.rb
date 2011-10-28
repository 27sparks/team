class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to login_path
  end

  private
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
