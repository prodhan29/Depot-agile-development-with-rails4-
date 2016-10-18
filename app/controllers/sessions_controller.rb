class SessionsController < ApplicationController

  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def new

  end

  def create

    duser = Duser.find_by(name: params[:name])
    if duser and duser.authenticate(params[:password])
      session[:user_id] = duser.id
      redirect_to admin_url
    else
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "logged out"
  end
end
