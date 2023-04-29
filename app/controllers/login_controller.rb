class LoginController < ApplicationController
	def new 
	end 
	def create 
		user = User.find_by(email: params[:login][:email].downcase)
	  if user && user.authenticate(params[:login][:password])
		 log_in user
      redirect_to user
    end
	end 
	def destroy
    log_out
    redirect_to login_path
  end
end