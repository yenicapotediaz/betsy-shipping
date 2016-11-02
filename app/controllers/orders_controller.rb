class OrdersController < ApplicationController
  before_action :require_login, only: [:show_seller_orders]
  before_action :truncate_cc_number, only: [:update]

  def show
    @orders = Order.find(current_order.id).orderitems
  end

  def show_seller_orders
  	@user = User.find(current_user.id)
    @user_orders_hash = Orderitem.where(user: current_user).group_by(&:order_id)
    @revenue = @user.revenue
    @completed_revenue = @user.revenue_by_status("Completed")
    @pending_revenue = @user.revenue_by_status("Pending")
    @completed_count = @user.order_by_status("Completed")
    @pending_count = @user.order_by_status("Pending")
  end

  def order_deets
    @user_orders_hash = Orderitem.where(user: current_user).group_by(&:order_id)
    @order = Order.find(params[:order_id])
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

  def checkout
    @order = current_order
    if @order.orderitems.count == 0
      redirect_to edit_order_path(current_order.id), alert: "Please add items to your cart!"
    end
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
    params.require(:order).permit([
      :name_on_credit_card, :credit_card_number,
      :credit_card_exp_date, :credit_card_cvv,
      :billing_zip, :street_address, :city, :state,
      :email, :status])
  end

  def truncate_cc_number
    if params[:order] && params[:order][:credit_card_number]
      card_num = params[:order][:credit_card_number]
      card_num.slice!(0..12) || (card_num = "")
    end
  end

end
