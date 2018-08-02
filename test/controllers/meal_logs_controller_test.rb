require 'test_helper'

class MealLogsControllerTest < ActionController::TestCase
  setup do
    @meal_log = meal_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_log" do
    assert_difference('MealLog.count') do
      post :create, meal_log: { from: @meal_log.from, name: @meal_log.name, till: @meal_log.till }
    end

    assert_redirected_to meal_log_path(assigns(:meal_log))
  end

  test "should show meal_log" do
    get :show, id: @meal_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_log
    assert_response :success
  end

  test "should update meal_log" do
    patch :update, id: @meal_log, meal_log: { from: @meal_log.from, name: @meal_log.name, till: @meal_log.till }
    assert_redirected_to meal_log_path(assigns(:meal_log))
  end

  test "should destroy meal_log" do
    assert_difference('MealLog.count', -1) do
      delete :destroy, id: @meal_log
    end

    assert_redirected_to meal_logs_path
  end
end
