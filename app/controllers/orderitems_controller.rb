class OrderitemsController < ApplicationController

  def index
    redirect_to order_path(current_order.id)
  end

  def create
    @product = Product.find(params[:product_id])
    @orderitem = current_order.orderitems.create(product: @product, quantity: params[:quantity])
    redirect_to edit_order_path(current_order.id)
  end



      def update

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
