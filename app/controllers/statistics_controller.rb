class StatisticsController < ApplicationController
  def index
    @dishes = Dish.where("id IN (?)", Meal.pluck(:dish_id))
    @statistics = Statistics.new
  end
end
