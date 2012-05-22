class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to Rolling Dones"
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find_by_id(params[:id])
	end
end