class Order < ApplicationRecord
	validates :total, :items, :delivery_address, presence: true
	serialize :items, Array 	# This line causes order.items to be an empty array when set to nil
end
