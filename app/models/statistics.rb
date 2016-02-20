class Statistics
  def days_since_last_meal(dish)
    lastly_eaten_on = dish.meals.pluck(:eaten_on).sort.reverse.first
    return 0 if lastly_eaten_on == Date.today
    return 1 if lastly_eaten_on == Date.yesterday
    (Date.today - lastly_eaten_on).to_i
  end
end
