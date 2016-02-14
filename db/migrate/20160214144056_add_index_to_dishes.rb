class AddIndexToDishes < ActiveRecord::Migration
  def change
    add_index :dishes, :name
  end
end
