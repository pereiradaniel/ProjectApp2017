class OrdersController < ApplicationController
	def new
		@order = Order.new
	end
	def create
		@order = Order.new(order_params)
    if @order.save
      redirect_to orders_path
    else
      render :new
    end
	end
  private
  def order_params
    params.fetch(:order, {}).permit(:total, :contact_information, :delivery_address, :items)
  end
end
