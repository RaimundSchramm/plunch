require 'test_helper'

class StatisticsControllerTest < ActionController::TestCase

  test 'get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:dishes)
  end
end
