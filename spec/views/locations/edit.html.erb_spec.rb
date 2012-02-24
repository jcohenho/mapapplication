require 'spec_helper'

describe "locations/edit" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
      :user_id => 1,
      :lat => 1.5,
      :lng => 1.5,
      :address => "MyString",
      :gmaps => false
    ))
  end

  it "renders the edit location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path(@location), :method => "post" do
      assert_select "input#location_user_id", :name => "location[user_id]"
      assert_select "input#location_lat", :name => "location[lat]"
      assert_select "input#location_lng", :name => "location[lng]"
      assert_select "input#location_address", :name => "location[address]"
      assert_select "input#location_gmaps", :name => "location[gmaps]"
    end
  end
end
