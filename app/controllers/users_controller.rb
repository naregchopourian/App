class UsersController < ApplicationController


	before_action :user_id, only: [:edit, :update, :destroy, :show]



	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			flash[:success] = "You are in #{@user.username}!"
			redirect_to root_path

		else 
			render 'users/new'
		end 
	end 

	def edit 


	end 


	def update
		if @user.update(user_params)
			flash[:success] = "your account was updated"
			redirect_to root_path

		else
			redirect_to edit_path

		end 
	end 

	def show
		
	end 


private

	def user_id
		@user = User.find(params[:id])
	end 


	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

end 