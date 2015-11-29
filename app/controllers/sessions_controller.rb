class SessionsController < ApplicationController
  skip_before_action :authorize, only: [:create, :update,:destroy]
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Wrong combination of name & password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "User log out."
  end

  def invalid_cart
    logger.error "Attemd to access invalid cart #{params[:id]}"
    redirect_to store_url, notice: 'invalid cart'
  end
end
