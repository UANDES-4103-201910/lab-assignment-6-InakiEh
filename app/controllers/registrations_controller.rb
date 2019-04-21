class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    @user = User.new(req_user_params)
		if @user.save
			flash[:notice] = "Uswr registered"
			redirect_to root_path
		else
			flash[:notice] = "Registration error "
			redirect_to sign_in_path
		end
	end

	def req_user_params
	  params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
	end
end
