module MealLogEntriesHelper

  def format_unique_day(any_day = DateTime.new)
    any_day.strftime("%d.%m.%Y")
  end

  def format_eaten_on(any_day = DateTime.new)
    any_day.strftime("%H:%M")
  end
end
