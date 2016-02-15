class AddEatenOnToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :eaten_on, :date
  end
end
