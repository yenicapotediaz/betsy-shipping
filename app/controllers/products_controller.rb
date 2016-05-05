class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def show_seller_products
		@user = User.find(params[:id])
		@products = @user.products
	end
end
