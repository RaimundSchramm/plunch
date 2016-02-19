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

  test 'should create meal' do
    assert_difference('Meal.count') do
      post :create, meal: { eaten_on: Date.today }
    end
    assert_redirected_to meals_path
  end

  test 'should not create meal if invalid' do
    assert_no_difference('Meal.count') do
      post :create, meal: { eaten_on: nil }
    end
    assert_response :success
  end

end
