class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    respond_to do |format|
      if @meal.save
        format.html { redirect_to meals_path }
      else
        format.html { render :new }
      end
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:eaten_on, :dish_id)
  end
end
