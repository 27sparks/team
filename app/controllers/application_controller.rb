class ApplicationController < ActionController::Base
 # before_filter :authorize
  protect_from_forgery

  private
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  protected 

    def authorize
      unless User.where(:id => params[:id]).first

      	redirect_to login_path, :notice => "Bitte anmelden!"
      end
    end
end
