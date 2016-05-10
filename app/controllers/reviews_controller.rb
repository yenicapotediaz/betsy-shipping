class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:id])
    @review = @product.reviews.new
  end

  def create
    @review = Review.new(review_create_params[:review])
		if @review.save
      update_product_rating(Product.find(@review.product_id))
    	redirect_to product_path(@review.product_id)
  	else
  		render :new
  	end
  end


  private

  def update_product_rating(product)
    ratings = product.reviews.collect { |a| a.rating.to_f }
		overall = ratings.reduce(:+)/ratings.length
		product.update(rating: overall)
  end

  def review_create_params
		params.permit(review: [:rating, :description, :product_id])
	end

end


	# def show
	# 	@product = Product.find(params[:id])
	# 	@quantity = @product.quantity
	# 	@quantity_numbers = (1..@quantity).to_a
	# 	@rating = overall_rating(@product)
	# end
