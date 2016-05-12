class OrdersController < ApplicationController
  before_action :require_login, only: [:show_seller_orders]

  def show
    @orders = Order.find(current_order.id).orderitems
  end

  def show_seller_orders
  	@user = User.find(current_user.id)
    @orders = @user.orders
  end


  def edit
    @order  = Order.find(params[:id])
    @orderitems = Order.find(current_order.id).orderitems
  end

  def update
    @order = current_order
    @orderitems = @order.orderitems
    continue = remove_items_from_stock(@orderitems)
    unless continue == false
      @order.update(order_update_params[:order])
    end
    if @order.status == "Completed"
      redirect_to order_confirmation_path(@order.id)
    else
      flash[:notice] = "Sorry! An item you wanted is out of stock. Check to see if you have duplicate items in your cart."
      redirect_to edit_order_path(current_order.id)
    end
  end


  def seller_items
  end

  def checkout
    @order = current_order
  end

  def confirmation
    @order = current_order
    @orderitems = @order.orderitems
    session.delete :order_id
    order = Order.create
    order.update(status: "Pending")
    session[:order_id] = order.id
  end


  private

  def remove_items_from_stock(items)
    items.each do |item|
      product = item.product
      quantity_being_bought = item.quantity
      available_quantity = product.quantity
      new_quantity = available_quantity - quantity_being_bought
      if new_quantity >= 0
        product.update(quantity: new_quantity)
      else
        return false
      end
    end
  end

  def orderitem_edit_params
    params.permit(orderitem: [:quantity])
  end

  def order_update_params
    params[:order][:credit_card_number] = params[:order][:credit_card_number][-4..-1]
    params.permit(order: [:name_on_credit_card, :user_id, :city, :state, :billing_zip,
      :email, :status, :street_address, :credit_card_cvv, :credit_card_number, :credit_card_exp_date])
  end



end
