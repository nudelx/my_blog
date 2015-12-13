class UsersController < ApplicationController
	
	def new
		@user  = User.new
	end


	def create
		@user = User.new(get_user_params)
		if(@user.save)
			flash[:success] = "User was created !!! "
			redirect_to articles_path
		else
			render 'new'
		end
	

	end
	


	private 

	def get_user_params

		params.require(:user).permit(:username, :email, :password)
		
	end
end