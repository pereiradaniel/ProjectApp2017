class OrdersController < ApplicationController
	def new
		@order = Order.new
	end
	def create
		# @order = Order.new(order_params)

    # if @order.save
    #   redirect_to items_url
    # else
    #   render items_url
    # end
	end
  private
  def order_params
    params.require(:order).permit(:total, :items, :delivery_address, :contact_information)
  end
end
