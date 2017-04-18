Rails.application.routes.draw do
	root "orders#new"
	resources :items, only: [:index]
	resources :orders, only: [:new, :create, :index]
end
