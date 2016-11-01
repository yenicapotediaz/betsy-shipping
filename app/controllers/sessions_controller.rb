class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  def new
  end

  def create
    redirect_to root_path, notice: "Could not log in" unless auth_hash.present?

    user = User.find_or_create_by_auth_hash(params[:provider].to_sym, auth_hash)
    if user
      session[:user_id] = user.id
      redirect_to root_path, notice: "Successfully logged in"
    else
      redirect_to root_path, notice: "Could not log in"
    end
  end

  def destroy
    session.delete :user_id
    redirect_to root_path, notice: "Successfully logged out"
  end


  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
