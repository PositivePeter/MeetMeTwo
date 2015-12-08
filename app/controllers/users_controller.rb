class UsersController < ApplicationController
	def index
	end

	def new 
	end

	def show 
	end

	def create
	end

	def edit
	end

	def update
		@user = User.find(params)[:id])
  	if @user.save
   		redirect_to root_path
  	else 
   		render :new
  	end
  end
  
  def edit
  	@user = User.find(params)[:id])
  end

  def update
  	@user = User.find(params)[:id])
  	if @user.update(user_params)
  		redirect_to root_path, notice: 'User was updated'
  	else
  		render :edit
  	end
  end

  def destroy
   	@user = User.find(params[:id]) 
   	@user.delete
   	redirect_to root_path, notice: 'User was deleted'
 	end

   	private

  def user_params
   	params.require(:user).permit(:name, :password, :email)
  end
end	 