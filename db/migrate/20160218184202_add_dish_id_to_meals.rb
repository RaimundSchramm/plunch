class AddDishIdToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :dish, index: true, foreign_key: true
  end
end
