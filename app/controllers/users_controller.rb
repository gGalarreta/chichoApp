class UsersController < ApplicationController
	layout "admin" 
	before_action :set_user, only: [:edit, :update]

	def index
		@users = User.all
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
		@user.assign_attributes user_params
		if @user.save
			redirect_to users_path, notice: 'User was successfully updated'
		else
			render :edit
		end
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :phone)
	end

	def set_user
		@user = User.find params[:id]
	end

end
