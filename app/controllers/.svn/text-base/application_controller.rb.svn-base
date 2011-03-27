class ApplicationController < ActionController::Base
  protect_from_forgery
	helper_method :current_user_session, :current_user, :logged_in?

	protected
	def current_user_session
		@current_user_session ||= UserSession.find
	end
	
	def current_user
		@current_user ||= current_user_session && current_user_session.user
	end

  def logged_in?
    !UserSession.find.nil?
  end

  def login_required
    unless logged_in?
      redirect_to login_path
    end
  end
end
