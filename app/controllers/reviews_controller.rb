class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:id])
    @review = @product.reviews.new
  end

  def create
    @review = Review.new(review_create_params[:review])
		if @review.save
    	redirect_to product_path(@review.product_id)
  	else
  		render :new
  	end
  end

  private

  def review_create_params
		params.permit(review: [:rating, :description, :product_id])
	end

end
