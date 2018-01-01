class UsersController < ApplicationController

  def show
    # @user = User.last
    @user = User.find(1)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 保存の成功をここで扱う。
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      flash[:fail] = "fuck you bastard!"
      render 'new'
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
