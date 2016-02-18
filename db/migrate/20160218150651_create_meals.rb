class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.date :eaten_on
    end
  end
end
