require 'test_helper'

class DishesHelperTest < ActionView::TestCase

  setup do
    @today = Date.today
  end

  test 'returns number of days since last consumption' do
    any_past_date = 2.days.ago.to_date
    expected      = "2 days ago"
    assert_equal expected, days_passed(any_past_date)
  end

  test 'returns today for recent dish' do
    expected      = "today"
    assert_equal expected, days_passed(@today)
  end

  test 'returns yesterday for yesterday dish' do
    expected      = "yesterday"
    assert_equal expected, days_passed(Date.yesterday)
  end

  test 'returns lastly eaten formatted' do
    expected      = "Tuesday, 16. February 2016"
    assert_equal expected, eaten_on_formatted(Date.new(2016, 2, 16))
  end

end
