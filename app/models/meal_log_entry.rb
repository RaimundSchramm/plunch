class MealLogEntry < ActiveRecord::Base

  default_scope {order('eaten_on')}

  def self.grouped_by_day
    all.group_by { |entry| entry.eaten_on.beginning_of_day }
  end

end
