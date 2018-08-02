Rails.application.routes.draw do
 
  resources :appoiments
  resources :medical_histories
	authenticated :user do 
		root to: 'home#index'
		get 'search/create'
		get 'patient/search'
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
	post 'contacts/create'

	
end
