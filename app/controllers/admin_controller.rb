class AdminController < ApplicationController

  include CurrentCart

  skip_before_action :authorize
  before_action :set_cart

  def index
    @total_orders = Order.count
  end
end
