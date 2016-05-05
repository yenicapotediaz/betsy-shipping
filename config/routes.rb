Rails.application.routes.draw do

  root 'home#index'

  resources :users, :only => [:index, :new, :create]
  resources :products

  get '/products/category/:category' => 'products#show', as: 'product_category'
  get '/users/:id/products' => 'products#show_user_products', as: 'user_products'

  resources :orders

  get '/users/:id/orders' => 'orders#show_seller_orders', as: 'seller_orders'

  resources :orderitems

  # get 'orders/order_fulfillment' => 'orders#index', as: 'order_fulfillment'


  resources :sessions, :only => [:new, :create]
  get "/logout" => "sessions#destroy"


end
