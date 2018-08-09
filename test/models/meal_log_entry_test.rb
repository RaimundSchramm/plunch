require 'test_helper'

class MealLogEntryTest < ActiveSupport::TestCase

  # associations
  test "belongs to a MealLog" do
    assert_respond_to MealLogEntry.new,  :meal_log
  end

  # scopes
  test "returns all entries ordered by day" do
    assert_respond_to MealLogEntry, :grouped_by_day

    MealLogEntry.grouped_by_day.each do |key, value|
      value.each do |entry|
        puts "#{key} - #{entry.eaten_on}"
        assert_equal key.strftime("%d %m %Y"), entry.eaten_on.strftime("%d %m %Y")
      end
    end
  end
end
