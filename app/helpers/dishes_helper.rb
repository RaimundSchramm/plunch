module DishesHelper

  def days_passed(number_of_days_passed)
    return 'today'     if number_of_days_passed == 0
    return 'yesterday' if number_of_days_passed == 1
    return "#{number_of_days_passed} days ago"
  end

  def eaten_on_formatted(date)
    date.strftime("%A, %d. %B %Y")
  end
end
