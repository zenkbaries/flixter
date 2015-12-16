require 'test_helper'

class Instructor::CoursesControllerTest < ActionController::TestCase
  test "course show page" do
    course = Course.create(:title=> 'Count', :description => 'How to go from 1 to 10', :cost => '1.00')
    get :show, :id => course.id
    assert_response :success
  end

  test "quote show page, not found" do
		get :show, :id => 'OMG'
    assert_response :not_found
  end
end
