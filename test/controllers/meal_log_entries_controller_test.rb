require 'test_helper'

class MealLogEntriesControllerTest < ActionController::TestCase
  setup do
    # @meal_log       = meal_logs(:one)
    # @meal_log_entry = meal_log_entries(:one)

    MealLog.delete_all
    MealLogEntry.delete_all
    @meal_log = MealLog.create
    @meal_log_entry = @meal_log.meal_log_entries.create(eaten_on: DateTime.new(2018,07,25,8))
  end

  test "should get index" do
    get :index, meal_log_id: @meal_log
    assert_response :success
    assert_not_nil assigns(:meal_log)
    assert_not_nil assigns(:meal_log_entries)
    assert_template 'meal_log_entries/index'
  end

  test "should get new" do
    get :new, meal_log_id: @meal_log
    assert_response :success
    assert_not_nil assigns(:meal_log)
    assert_not_nil assigns(:meal_log_entry)
    assert_template 'meal_log_entries/new'
  end

  test "should create meal_log_entry" do
    assert_difference('MealLogEntry.count') do
      post :create, { meal_log_id: @meal_log, meal_log_entry: { eaten_on: @meal_log_entry.eaten_on, meal: @meal_log_entry.meal } }
    end

    assert_not_nil assigns(:meal_log)
    assert_not_nil assigns(:meal_log_entry)
    assert_redirected_to meal_log_meal_log_entry_path(assigns(:meal_log), assigns(:meal_log_entry))
  end

  test "should show meal_log_entry" do
    get :show, meal_log_id: @meal_log, id: @meal_log_entry
    assert_response :success
    assert_not_nil assigns(:meal_log)
    assert_not_nil assigns(:meal_log_entry)
    assert_template 'meal_log_entries/show'
  end

  test "should get edit" do
    get :edit, meal_log_id: @meal_log, id: @meal_log_entry
    assert_response :success
    assert_not_nil assigns(:meal_log)
    assert_not_nil assigns(:meal_log_entry)
    assert_template 'meal_log_entries/edit'
  end

  test "should update meal_log_entry" do
    patch :update, meal_log_id: @meal_log, id: @meal_log_entry, meal_log_entry: { eaten_on: @meal_log_entry.eaten_on, meal: @meal_log_entry.meal }
    assert_not_nil assigns(:meal_log)
    assert_not_nil assigns(:meal_log_entry)
    assert_redirected_to meal_log_meal_log_entry_path(assigns(:meal_log), assigns(:meal_log_entry))
  end

  test "should destroy meal_log_entry" do
    assert_difference('MealLogEntry.count', -1) do
      delete :destroy, meal_log_id: @meal_log, id: @meal_log_entry
    end

    assert_redirected_to meal_log_meal_log_entries_path(assigns(:meal_log))
  end
end
