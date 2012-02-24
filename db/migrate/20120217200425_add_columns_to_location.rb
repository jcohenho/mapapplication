class AddColumnsToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :location_name, :string
    add_column :locations, :phone_number, :string
    add_column :locations, :district, :string
    add_column :locations, :city, :string
    add_column :locations, :postcode, :string
    add_column :locations, :rating, :decimal
  end
end
