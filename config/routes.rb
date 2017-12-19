Rails.application.routes.draw do
 
	authenticated :user do 
		root to: 'home#index'
		get 'search/create'
		get 'search/new'
		resources :patients
		resources :consultations
		resources :measurements
		resources :prescriptions
		resources :events
		resources :posts
		resources :usuarios,  as: :users, only: [:show, :update]
	end

	unauthenticated :user do
		root 'home#unregistered'
		get 'home/suscribe'
	end 

	devise_for :users
	resources :contacts

	
end
