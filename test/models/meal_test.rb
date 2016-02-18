require 'test_helper'

class MealTest < ActiveSupport::TestCase

  setup do
    @meal = Meal.new(eaten_on: Date.today)
  end

  # class specific
  test 'is a Meal' do
    assert_kind_of Meal, @meal
  end

  # attributes
  test 'has a date' do
    assert_respond_to @meal, :eaten_on
  end

  # associations
  test 'consists of one or more dishes' do
    assert_respond_to @meal, :dishes
  end

  # validations
  test 'is valid' do
    assert @meal.valid?
  end

  test 'must have a date when it is consumed' do
    @meal.eaten_on = nil
    assert_not @meal.valid?
  end

end
