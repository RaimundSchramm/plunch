class MealLog < ActiveRecord::Base

  has_many :meal_log_entries
end
