require 'test_helper'

class MealLogTest < ActiveSupport::TestCase

  # associations
  test "has many MealLogEntries" do
    assert_respond_to MealLog.new, :meal_log_entries
  end
end
