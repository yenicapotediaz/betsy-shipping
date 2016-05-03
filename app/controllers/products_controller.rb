class ProductsController < ApplicationController

	def show
		@products = Product.find(params[:category])
	end
end
