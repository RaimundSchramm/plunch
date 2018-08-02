class CreateMealLogs < ActiveRecord::Migration
  def change
    create_table :meal_logs do |t|
      t.string :name
      t.date :from
      t.date :till

      t.timestamps null: false
    end
  end
end
