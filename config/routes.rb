Rails.application.routes.draw do

  root 'home#index'

  resources :users, :only => [:new, :create]
  resources :products
  resources :orders
  resources :orderitem


end
