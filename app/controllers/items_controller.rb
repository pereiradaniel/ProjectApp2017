class ItemsController < ApplicationController
	def index
		@items = Item.all
		@order = Order.new
	end
end
