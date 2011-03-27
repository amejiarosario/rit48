class UserSessionsController < ApplicationController
  before_filter :login_required, :only => [:destroy]

	def new
		@user_session = UserSession.new
		render :layout => "user_session"
	end

	def create
		@user_session = UserSession.new(params[:user_session])
		if @user_session.save
			redirect_to root_path
		else
			render :action => :new
		end
	end

	def destroy
		current_user_session.destroy
		redirect_to login_path
	end
end
