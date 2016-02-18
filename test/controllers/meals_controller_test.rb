require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals)
  end
end
