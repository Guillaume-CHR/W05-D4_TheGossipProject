class SessionsController < ApplicationController
  layout false
  def new
  end

	def create
    user = User.find_by_email(params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash.now[:alert] = "Dear #{user.name}, you have successfully logged in."
      render "new"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "The email or username is not existing."
    end
	end

  def destroy
  	session.delete(:user_id)
  end
end