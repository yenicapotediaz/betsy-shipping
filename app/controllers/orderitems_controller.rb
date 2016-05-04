class OrderitemsController < ApplicationController

  def create
    @product = Product.find(params[:product_id])
    @orderitem = current_order.orderitems.create(product: @product, quantity: 1 )
    redirect_to root_path
  end

end
