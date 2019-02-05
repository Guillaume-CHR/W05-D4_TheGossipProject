class UsersController < ApplicationController
  def show
  	@user = User.find(params[:user_id])
  end

  def edit
  end

  def new
  end

  def destroy
  end
end