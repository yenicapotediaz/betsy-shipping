class OrdersController < ApplicationController

  def show
    @orders = Order.find(current_order.id).orderitems
  end


  def show_seller_orders
  	@user = User.find(params[:id])
  	@orders = @user.orders
  end
end
