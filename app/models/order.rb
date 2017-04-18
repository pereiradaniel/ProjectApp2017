class Order < ApplicationRecord
	validates :total, :items, :delivery_address, :contact_information, presence: true
end
