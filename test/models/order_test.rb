require 'test_helper'
# Tests
# 	- Should be invalid without an item
# 	- An order can have many items
# 	- Total should be an integer
# 	- Should be invalid without a total
# 	- Should be invalid without a delivery address
# 	- Should be invalid without contact information

class OrderTest < ActiveSupport::TestCase
	test "should be invalid without an item" do
		orders.(:one).items = nil
		assert_nil orders.(:one).items
		assert_equal false, orders(:one).valid?
	end
end
