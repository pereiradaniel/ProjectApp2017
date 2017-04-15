class OrdersController < ApplicationController
	def new
		@order = Order.new
	end
	def create
		@order = Order.new(order_params)
    if @order.save
      redirect_to orders_path(@order.id)
    else
      redirect_to items_path
    end
	end
  private
  def order_params
    params.require(:order).permit(:total, :contact_information, :delivery_address, :items)
  end
end
