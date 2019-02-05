Rails.application.routes.draw do

  get 'user/show'
  get 'user/edit'
  get 'user/new'
  get 'user/destroy'
  get 'author/show'
  get 'author/edit'
  get 'author/new'
  get 'author/destroy'
  get 'gossip/show'
  get 'gossip/edit'
  get 'gossip/new'
  get 'gossip/destroy'
	#Home Page: Identification > Customized Home Page
	root 'home#index'
	get '/welcome/:text', to: 'home#welcome'

	#Specific Pages
	get '/team', to: 'home#team'
	get '/contact', to: 'home#contact'

	#Gossips
	get '/gossips/:gossip_id', to: 'gossip#show'
	get '/gossips/:gossip_id/edit', to: 'gossip#edit'
	get '/gossips/new', to: 'gossip#new'
	get '/gossips/new', to: 'gossip#destroy'

	#User
	get '/users/:user_id', to: 'user#show'
	get '/users/:gossip_id/edit', to: 'user#edit'
	get '/users/new', to: 'user#new'
	get '/users/new', to: 'user#destroy'

end