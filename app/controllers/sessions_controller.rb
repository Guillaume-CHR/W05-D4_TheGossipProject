class SessionsController < ApplicationController
  layout false
  def new
  	@user = User.new
  end

	def create
	  # cherche s'il existe un utilisateur en base avec l’e-mail
	  puts "v"*80
	  puts params.inspect
	  puts "^"*80
	  params.require(:gossip).permit(:password, :email)
	  puts "v"*80
	  puts params.inspect
	  puts "^"*80


	  user = User.find_by(email: params[:email])

		flash[:danger] = 'tempo'
	  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
	  if user && user.authenticate(params[:password])
	    session[:user_id] = user.id
	    # redirige où tu veux, avec un flash ou pas
	    flash[:success] = 'Yes'
	  else
	    flash[:danger] = 'Invalid email/password combination'
	    render 'new'
	  end
	end

  def destroy
  end
end
