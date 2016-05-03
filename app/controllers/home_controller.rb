class HomeController < ApplicationController

	def index
		@products = Product.all
		@product_picker = Product.where.not(id: nil).sample(3)
	end
end
