class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.log_in(params[:username], params[:password])
    # order = Order.create
    # order.update(status: "Pending")
    # session[:order_id] = order.id
    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path
  end


end
