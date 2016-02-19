require 'test_helper'

class MealTest < ActiveSupport::TestCase

  setup do
    @meal = Meal.new(eaten_on: Date.today)
  end

  # attributes
  test 'has a date' do
    assert_respond_to @meal, :eaten_on
  end

  # associations
  test 'is of a kind of dish' do
    assert_respond_to @meal, :dish
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
