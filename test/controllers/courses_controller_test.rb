require 'test_helper'

class CoursesControllerTest < ActionController::TestCase

	test "index" do
		get :index
		assert_response :success
	end
	
	test "course show page success" do
		user = FactoryGirl.create(:user)
		sign_in user
		course = FactoryGirl.create(:course, :user => user)
		get :show, :id => course.id
		assert_response :success
	end

 test "course show page not found" do
	user = FactoryGirl.create(:user)
	sign_in user
 	get :show, :id => 'OMG'
 	assert_response :not_found
 end
end
