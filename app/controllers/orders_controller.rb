class OrdersController < ApplicationController
	def new
		@items = Item.all
		@order = Order.new
	end
	def create
		@order = Order.create
	end
end
