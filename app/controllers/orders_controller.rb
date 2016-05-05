class OrdersController < ApplicationController

  def show
    @orders = Order.find(current_order.id).orderitems



  end


end
