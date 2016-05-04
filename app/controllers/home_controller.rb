class HomeController < ApplicationController

	def index
		@products = Product.all
		@product_picker = Product.where.not(id: nil).sample(3)
		# @categories = Product.uniq.pluck(:category)
		@categories = Product.where(:conditions => {:category => params[:category]})
	end

end
