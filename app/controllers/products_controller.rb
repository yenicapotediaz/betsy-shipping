class ProductsController < ApplicationController
	before_action :require_login, only: [:new, :create]

	def index
		@products = Product.all
		@quantity_numbers = [1,2,3,4,5,6,7,8,9,10]
	end

	def show
		@product = Product.find(params[:id])
		@quantity_numbers = [1,2,3,4,5,6,7,8,9,10]
		@rating = overall_rating(@product)
	end

	def overall_rating(product)
		ratings = product.reviews.collect { |a| a.rating.to_f }
		overall = ratings.reduce(:+)/ratings.length
		overall
	end

	def show_seller_products
		@user = User.find(params[:id])
		@products = @user.products
	end

	def show_merchant
		@user = User.find(params[:id])
		@products = @user.products
	end

	def show_category
		@products = Product.where(category: params[:category])
	end

	def new
		@user = User.find(params[:id])
		@product = @user.products.new
		@category = Product.uniq.pluck(:category)
	end

	def create
		@product = Product.new(product_create_params[:product])
		if @product.save
    	redirect_to user_product_path(current_user.id)
  	else
  		render :new
  	end
	end

	def edit
    @product = Product.find(params[:id])
    @user = User.find(current_user.id)
  end

  def update
    @product = Product.find(params[:user_id])
    @product.update_attributes(product_update_params[:product])
    redirect_to user_product_path(current_user.id)
  end

	private

	def product_create_params
		params.permit(product: [:name, :description, :price, :quantity, :category, :photo_url, :user_id])
	end

	def product_update_params
		params.permit(product: [:name, :description, :price, :quantity, :category, :photo_url])
	end
end
