require 'test_helper'

	# Tests checklist
	# 	x Should get index

class ItemsControllerTest < ActionController::TestCase
	test "Should get index" do
		get :index
		assert_response :success
	end
end
