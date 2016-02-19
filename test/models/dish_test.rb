require 'test_helper'

class DishTest < ActiveSupport::TestCase

  setup do
    @current_date = Date.today
    @valid_dish = Dish.new name: 'Currywurst', eaten_on: @current_date
  end

  # attributes
  test 'has a name' do
    assert_respond_to @valid_dish, :name
    assert_equal 'Currywurst', @valid_dish.name
  end

  test 'has a date' do
    assert_respond_to @valid_dish, :eaten_on
    assert_equal @current_date, @valid_dish.eaten_on
  end

  # validations
  test 'is valid' do
    assert @valid_dish.valid?
  end

  test 'has a unique name' do
    original_currywurst = Dish.new name: 'There can be only one Currywurst'
    fake_currywurst     = original_currywurst.dup
    original_currywurst.save
    assert_not fake_currywurst.valid?
  end

  # scopes
  test 'is ordered by descending date by default' do
    yesterdays_dish = Dish.create(name: 'lunch yesterday', eaten_on: Date.yesterday)
    todays_dish     = Dish.create(name: 'lunch today', eaten_on: Date.today)
    dishes = Dish.eaten_lastly
    assert dishes.first.eaten_on > dishes.last.eaten_on
  end

  # associations
  test 'can be eaten on many meals' do
    assert_respond_to @valid_dish, :meals
  end

end
