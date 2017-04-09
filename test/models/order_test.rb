require 'test_helper'
# Tests
# 	x Should be invalid without an item
#   x An order can have one item
# 	x An order can have many items
# 	x Should be invalid without a total
# 	x Total should be an integer
# 	x Should be invalid without a delivery address
# 	x Should be invalid without contact information

# NEW TESTS

class OrderTest < ActiveSupport::TestCase
	test "Should be invalid without an item" do
		orders(:one).items = nil
		# Due to serialization, order.item should be an empty array when nil
		assert_equal true, orders(:one).items == []
		# The empty array will still be invalid
		assert_equal false, orders(:one).valid?
	end

	test "An order can have one item" do
		orders(:one).items = ["Item 1"]
		assert_equal true, orders(:one).items.length == 1
	end

	test "An order can have many items" do
		orders(:one).items = ["Item 1", "Item 2"]
		assert_equal true, orders(:one).items.length > 1
	end

	test "Should be invalid without a total" do
		orders(:one).total = nil
		assert_nil orders(:one).total
		assert_equal false, orders(:one).valid?
	end

	test "Total should be an integer" do
		assert_equal true, orders(:one).total.is_a?(Integer)
	end

	test "Should be invalid without a delivery address" do
		orders(:one).delivery_address = nil
		assert_equal false, orders(:one).valid?
	end

	test "Should be invalid without contact information" do
		orders(:one).contact_information = nil
		assert_equal false, orders(:one).valid?
	end
end
