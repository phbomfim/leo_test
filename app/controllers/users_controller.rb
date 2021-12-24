# frozen_string_literal: true

# Creates the users controller
class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(email: ''..'', name: ''...'', age: ''...'')
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end
end
