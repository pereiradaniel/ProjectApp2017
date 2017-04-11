class Item < ApplicationRecord
	validates :item_name, :price, presence: true
end
