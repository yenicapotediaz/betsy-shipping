class ProductsController < ApplicationController

	def index
		@products = Product.all
		@quantity_numbers = [1,2,3,4,5,6,7,8,9,10]
	end

	def show
		@product = Product.find(params[:id])
	end

	def show_user_products
		@user = User.id(params[:id])
		@products = Product.where(user_id: @user)
	end
end
