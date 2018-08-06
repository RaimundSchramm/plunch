require 'test_helper'

class MealLogEntriesHelperTest < ActionView::TestCase

  setup do
  end

  test 'returns a unique day' do
    any_day_as_datetime = DateTime.new(2018,1,1,8,0)
    expected = '01.01.2018'
    assert_equal expected, format_unique_day(any_day_as_datetime)
  end

  test 'returns a time when a meal is eaten' do
    any_day_as_datetime = DateTime.new(2018, 8, 6, 13, 29)
    expected = '13:29'
    assert_equal expected, format_eaten_on(any_day_as_datetime)
  end

end
