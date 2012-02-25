class Location < ActiveRecord::Base
  acts_as_gmappable :lat => 'lat', :lng => 'lng', :check_process => :prevent_geocoding,
                    :address => "address", :normalized_address => "address", :rating => "rating",
                    :msg => "Sorry, not even Google could figure out where that is"
                    
  belongs_to :user
  
  validates_uniqueness_of :lat, :scope => :lng
  
  
  CATEGORIES = ['food','entertainment','nightclub']
                    
  def prevent_geocoding
      address.blank? || (!lat.blank? && !lng.blank?) 
  end
  
  
  def gmaps4rails_infowindow
    
       "<h4>#{user.name}</h4>" << "<h4>#{address}</h4>"
      end
  
  
  def gmaps4rails_sidebar
   address #put whatever you want here
  end
  
 
  
  
end
