

class VenuesController < ApplicationController
  
  def show
    
    services = NoReport.old_or_new :name => 'Services', :seo => 'services'
    contact = NoReport.old_or_new :name => 'Contact', :seo => 'contact'
    
    @venue = NoVenue.where(:seo => 'C-A-C').first
    no_photo = NoPhotoStub2.create
    @venue.no_photos = [ no_photo ]
    @venue.no_reports = [ services, contact ]
    @venue.save
    
    @venues = []
    
    @city_features = false
    
  end
  
end