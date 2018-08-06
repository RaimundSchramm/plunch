class CreateMealLogEntries < ActiveRecord::Migration
  def change
    create_table :meal_log_entries do |t|
      t.datetime :eaten_on
      t.text :meal
      t.references :meal_log

      t.timestamps null: false
    end
  end
end
