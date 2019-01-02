class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(name: params[:name])
  end

  def show

  end
end
