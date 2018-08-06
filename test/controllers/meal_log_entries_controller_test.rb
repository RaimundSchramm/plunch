require 'test_helper'

class MealLogEntriesControllerTest < ActionController::TestCase
  setup do
    @meal_log_entry = meal_log_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_log_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_log_entry" do
    assert_difference('MealLogEntry.count') do
      post :create, meal_log_entry: { eaten_on: @meal_log_entry.eaten_on, meal: @meal_log_entry.meal }
    end

    assert_redirected_to meal_log_entry_path(assigns(:meal_log_entry))
  end

  test "should show meal_log_entry" do
    get :show, id: @meal_log_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_log_entry
    assert_response :success
  end

  test "should update meal_log_entry" do
    patch :update, id: @meal_log_entry, meal_log_entry: { eaten_on: @meal_log_entry.eaten_on, meal: @meal_log_entry.meal }
    assert_redirected_to meal_log_entry_path(assigns(:meal_log_entry))
  end

  test "should destroy meal_log_entry" do
    assert_difference('MealLogEntry.count', -1) do
      delete :destroy, id: @meal_log_entry
    end

    assert_redirected_to meal_log_entries_path
  end
end
