Rails.application.routes.draw do

  root 'home#index'

  resources :users, :only => [:new, :create]
  resources :products

  get '/products/:category' => 'products#show', as: 'product_category'

  resources :orders
  resources :orderitem


end
