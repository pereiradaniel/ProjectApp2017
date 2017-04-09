require 'test_helper'
# Tests
# 	x Should be invalid without a total
# 	x Total should be an integer
# 	x Should be invalid without an item
# 	- An order can have many items
# 	- Should be invalid without a delivery address
# 	- Should be invalid without contact information

# NEW TESTS

class OrderTest < ActiveSupport::TestCase
	test "Should be invalid without an item" do
		orders(:one).items = nil
		# Due to serialization, order.item should be an empty array when nil
		assert_equal true, orders(:one).items == []
		# The empty array will still be invalid
		assert_equal false, orders(:one).valid?
	end

	test "Should be invalid without a total" do
		orders(:one).total = nil
		assert_nil orders(:one).total
		assert_equal false, orders(:one).valid?
	end

	test "Total should be an integer" do
		assert_equal true, orders(:one).total.is_a?(Integer)
	end
end
