require 'test_helper'

	# Tests checklist
	# 	x Should get new
	# 	x Should get create

class OrdersControllerTest < ActionController::TestCase
	test "should get new" do
		get :new
		assert_response :success
	end

	test "should get create" do
		get :create
		assert_response :success
	end
end
