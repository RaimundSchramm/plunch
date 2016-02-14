require 'test_helper'

class DishesControllerTest < ActionController::TestCase

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:dishes)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test "should create dish" do
    assert_difference('Dish.count') do
      post :create, dish: { name: 'Currywurst' }
    end

    assert_redirected_to dishes_path
  end

end
