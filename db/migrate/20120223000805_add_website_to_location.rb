class AddWebsiteToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :website, :string

  end
end
