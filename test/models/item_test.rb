require 'test_helper'

class ItemTest < ActiveSupport::TestCase
	# Tests checklist
	# 	x Should be invalid without a name
	# 	- Should be invalid without a price
	# 	- Should be invalid without any options

	test "Should be invalid without a name" do
		items(:one).item_name = nil
		assert_equal false, items(:one).valid?
	end
end
