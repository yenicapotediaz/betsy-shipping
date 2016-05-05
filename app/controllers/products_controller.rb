class ProductsController < ApplicationController

	def index
		@products = Product.all
		@quantity_numbers = [1,2,3,4,5,6,7,8,9,10]
	end

	def show
		@product = Product.find(params[:id])
	end

	def show_seller_products
		@user = User.find(params[:id])
		@products = @user.products
	end

	def new
		@product = Product.new
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

	private

	def product_create_params
		params.permit(product: [:name, :description, :price, :quantity, :category, :photo_url, :user_id])
	end
end
