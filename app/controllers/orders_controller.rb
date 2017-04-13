class OrdersController < ApplicationController
	def new
		@order = Order.new
	end
	def create
		@order = Order.new
    if @order.save
      redirect_to order_path(@order.id)
    else
      redirect_to items_path
    end
	end
  # private
  # def order_params
  #   params.require(:order).permit()
  # end
end
