require 'test_helper'
class OrderTest < ActiveSupport::TestCase

	# Tests checklist
	# 	x Should be invalid without an item
	#   x Should be valid with an item
	#   x An order can have one item
	#   x Order.items should be a string
	# 	x Should be invalid without a total
	# 	x Should be valid with a total
	# 	x Total should be an integer
	# 	x Should be invalid without a delivery address
	# 	x Should be invalid without contact information

	test "Should be invalid without an item" do
		# Sets order items set to nil
		orders(:one).items = nil
		assert_equal false, orders(:one).valid?
	end

	test "Should be valid with an item" do
		# Sets order items to have one item
		orders(:one).items = ["Item 1"]
		assert_equal true, orders(:one).valid?
	end

	test "An order can have one item" do
		# Sets order items to have one item
		orders(:one).items = "Item 1"
		assert_equal true, orders(:one).items?
	end

	test "Order.items should be an string" do
		# Sets order items to have two items
		orders(:one).items = "Item 1"
		assert_equal true, orders(:one).items.is_a?(String)
	end

	test "Should be invalid without a total" do
		# Sets order total to nil
		orders(:one).total = nil
		assert_nil orders(:one).total
		assert_equal false, orders(:one).valid?
	end

	test "Should be valid with a total" do
		# Sets order total to 10
		orders(:one).total = 10
		assert_equal true, orders(:one).valid?
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
