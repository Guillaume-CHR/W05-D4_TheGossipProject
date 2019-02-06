Rails.application.routes.draw do

	#Home Page: Identification > Customized Home Page
	root 'homes#index'
	get '/welcome/:text', to: 'homes#welcome'

	#Specific Pages
	get '/team', to: 'homes#team'
	get '/contact', to: 'homes#contact'

	#Gossips
	resources :gossips, only: [:show, :new, :create, :edit, :destroy]
	# get '/gossips/:gossip_id', to: 'gossips#show'
	# get '/gossips/:gossip_id/edit', to: 'gossips#edit'
	# get '/gossips/new', to: 'gossips#new'
	# get '/gossips/destroy', to: 'gossips#destroy'

	#User
	resources :users, only: [:show, :new, :create, :edit, :destroy]
	# get '/users/:user_id', to: 'users#show'
	# get '/users/:user_id/edit', to: 'users#edit'
	# get '/users/new', to: 'users#new'
	# get '/users/destroy', to: 'users#destroy'

end