class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(user_params)
    @user.valid? ? redirect_to user_path(@user) : redirect_to users_new
  end

  def show

  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
