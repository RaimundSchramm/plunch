require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:meals)
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_not_nil assigns(:meal)
  end

end
