Rails.application.routes.draw do

	#Home Page: Identification > Customized Home Page
	root 'homes#index'
	get '/welcome/:text', to: 'homes#welcome'

	#Specific Pages
	get '/team', to: 'homes#team'
	get '/contact', to: 'homes#contact'

	#Gossips
	resources :gossips, only: [:show, :new, :create, :edit, :destroy, :update]

	#User
	resources :users, only: [:show, :new, :create, :edit, :destroy, :update]
end