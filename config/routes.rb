Rails.application.routes.draw do
	root "items#index"
	resources :items, only: [:index]
	resources :orders, only: [:new, :create]
end
