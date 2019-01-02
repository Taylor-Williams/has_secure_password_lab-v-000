class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(user_params)
    if @user.valid? 
      redirect_to user_path(@user)
    else
      redirect_to users_new
    end
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
