require 'test_helper'

class StatisticsTest < ActiveSupport::TestCase

  setup do
    @currywurst = Dish.create(name: 'Currywurst')
  end

  test 'returns the number of days since a Dish was eaten' do
    i_ate_a_currywurst_two_weeks_ago
    obj = Statistics.new
    assert_equal 14, obj.days_since_last_meal(@currywurst)
  end

  test 'returns 0 if Dish was eaten today' do
    i_ate_a_currywurst_today
    obj = Statistics.new
    assert_equal 0, obj.days_since_last_meal(@currywurst)
  end

  test 'returns 1 if Dish was eaten yesterday' do
    i_ate_a_currywurst_yesterday
    obj = Statistics.new
    assert_equal 1, obj.days_since_last_meal(@currywurst)
  end

  def i_ate_a_currywurst_today
    Meal.create(dish: @currywurst, eaten_on: Date.today)
  end

  def i_ate_a_currywurst_yesterday
    Meal.create(dish: @currywurst, eaten_on: Date.yesterday)
  end

  def i_ate_a_currywurst_two_weeks_ago
    Meal.create(dish: @currywurst, eaten_on: 2.weeks.ago.to_date)
  end

end
