# frozen_string_literal: true
# Creates the users controller
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params.require(:user).call(:email, :name, :age))
    if @user.valid?
      redirect_to users_path
    else
      render :new
    end
  end
end
