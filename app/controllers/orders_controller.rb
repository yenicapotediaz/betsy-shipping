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
    binding.pry
    @orderitem = Orderitem.find(params[:id])
    if @orderitem.update(orderitem_edit_params[:orderitem])
      redirect_to root_path
    else
    redirect_to root_path
    end
  end

  private

  def orderitem_edit_params
    params.permit(orderitem: [:quantity])
  end



end
