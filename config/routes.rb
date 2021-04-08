Rails.application.routes.draw do
  devise_for :users
  resources :products

  resource :cart, only: [ :show ] do 
  	post :add, path: "add/:id" 
  	get :checkout
  end

  resources :orders, only: [ :index, :show, :create ]

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
