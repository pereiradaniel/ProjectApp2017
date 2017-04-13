class OrdersController < ApplicationController
	def new
		@order = Order.new
	end
	def create
		@order = Order.create
	end
end
