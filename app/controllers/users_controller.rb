class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash.now[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      flash[:fail] = "sorry!"
      render 'new'
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
