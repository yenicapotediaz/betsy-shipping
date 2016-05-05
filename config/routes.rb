Rails.application.routes.draw do

  root 'home#index'

  resources :users, :only => [:index, :new, :create] #do

    # resources :products, :only => [:show, :new]
  # end

  resources :products, :only => [:index, :show, :create] 
  get '/products/category/:category' => 'products#show', as: 'product_category'
  get '/users/:id/products' => 'products#show_seller_products', as: 'user_product'
  get '/users/:id/products/new' => 'products#new', as: 'new_product'
  post '/users/:id/products' => 'products#create'

  resources :orders

  get '/users/:id/orders' => 'orders#show_seller_orders', as: 'seller_orders'

  resources :orderitems

  # get 'orders/order_fulfillment' => 'orders#index', as: 'order_fulfillment'


  resources :sessions, :only => [:new, :create]
  get "/logout" => "sessions#destroy"


end
