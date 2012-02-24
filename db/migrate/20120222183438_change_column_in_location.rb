class ChangeColumnInLocation < ActiveRecord::Migration
  
  def change
  change_column :locations, :rating, :decimal, :precision => 3, :scale => 1
  remove_column :locations, :district
  end
  
end
