class OrdersController < ApplicationController

  def show
    @orders = Order.find(current_order.id).orderitems
  end


  def show_seller_orders
  	@user = User.find(params[:id])
  	@orders = @user.orders
  end

  def edit
    @order  = Order.find(params[:id])
    @quantity_numbers = [1,2,3,4,5,6,7,8,9,10]
    @orderitems = Order.find(current_order.id).orderitems
  end

  def update
    #holy jeez there are so many things that could get updated, someone could update sevearl quantities at once
  end



end
