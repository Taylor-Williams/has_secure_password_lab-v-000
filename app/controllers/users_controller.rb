class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(name: params[:name])
    smth = @user.authenticate if @user.valid?
    if smth
  end

  def show

  end
end
