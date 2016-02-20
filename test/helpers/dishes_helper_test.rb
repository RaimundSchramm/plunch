require 'test_helper'

class DishesHelperTest < ActionView::TestCase

  setup do
    @today = Date.today
  end

  test 'returns number of days since last consumption' do
    assert_equal '2 days ago', days_passed(2)
  end

  test 'returns today for recent dish' do
    assert_equal 'today', days_passed(0)
  end

  test 'returns yesterday for yesterday dish' do
    assert_equal 'yesterday', days_passed(1)
  end

  test 'returns lastly eaten formatted' do
    expected      = "Tuesday, 16. February 2016"
    assert_equal expected, eaten_on_formatted(Date.new(2016, 2, 16))
  end

end
