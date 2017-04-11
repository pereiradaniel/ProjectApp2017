require 'test_helper'
class ItemTest < ActiveSupport::TestCase

	# Tests checklist
	# 	x Should be invalid without a name
	# 	x Should be invalid without a price

	test "Should be invalid without a name" do
		items(:one).item_name = nil
		assert_equal false, items(:one).valid?
	end

	test "Should be invalid without a price" do
		items(:one).price = nil
		assert_equal false, items(:one).valid?
	end
end
