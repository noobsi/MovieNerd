class OrdersController < ApplicationController
  def index
    @order = Order.find_by id: params[:id]
  end
end
