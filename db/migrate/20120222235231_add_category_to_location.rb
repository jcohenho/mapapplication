class AddCategoryToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :category, :string

  end
end
