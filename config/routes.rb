Rails.application.routes.draw do

	#Home Page: Identification > Customized Home Page
	root 'homes#index'
	get '/welcome/:text', to: 'homes#welcome'

	#Specific Pages
	get '/team', to: 'homes#team'
	get '/contact', to: 'homes#contact'

	#Gossips
	get '/gossips/:gossip_id', to: 'gossips#show'
	get '/gossips/:gossip_id/edit', to: 'gossips#edit'
	get '/gossips/new', to: 'gossips#new'
	get '/gossips/new', to: 'gossips#destroy'

	#User
	get '/users/:user_id', to: 'users#show'
	get '/users/:gossip_id/edit', to: 'users#edit'
	get '/users/new', to: 'users#new'
	get '/users/new', to: 'users#destroy'

end