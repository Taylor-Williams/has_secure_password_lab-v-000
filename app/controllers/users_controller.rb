class UsersController < ApplicationController
  def new

  end

  def create
    @user = User.create(name: params[:name])
    if self.password_confirmation
      self.password_confirmation == self.password
  end

  def show

  end
end
