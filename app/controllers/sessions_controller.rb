class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
	end

	def destroy
		session[:current_user_id] = nil
		redirect_to root_path
	end
end
