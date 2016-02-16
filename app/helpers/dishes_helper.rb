module DishesHelper

  def days_passed(date)
    return 'today' if date == Date.today
    return 'yesterday' if date == Date.yesterday
    number_of_days_passed = (Date.today - date).to_i
    return "#{number_of_days_passed} days ago"
  end

  def eaten_on_formatted(date)
    date.strftime("%A, %d. %B %Y")
  end
end
