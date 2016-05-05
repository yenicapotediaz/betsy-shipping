class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def show_user_products
		@user = User.id(params[:id])
		@products = Product.where(user_id: @user)
	end
end
