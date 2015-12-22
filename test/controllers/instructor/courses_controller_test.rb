require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  test "course show page success" do
  	user = FactoryGirl.create(:user)
  	sign_in user
  	# course = FactoryGirl.create(:course, :user => user)

    course = FactoryGirl.create(:course, :user => user)

    # course = FactoryGirl.create(:title=> 'Count', :description => 'How to go from 1 to 10', :cost => '1.00')
    get :show, :id => course.id
    assert_response :success
  end

  test "course show page, not found" do
    user = FactoryGirl.create(:user)
    sign_in user
		get :show, :id => 'OMG'
    assert_response :not_found
  end
end
