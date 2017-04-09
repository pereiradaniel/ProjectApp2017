class Order < ApplicationRecord
	validates :total, :items, presence: true
	# serialize :items, Array
end
