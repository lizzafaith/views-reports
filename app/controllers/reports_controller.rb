

class ReportsController < ApplicationController
  
  
  helper :all, :images, :users
  helper :devv if Rails.env.development?
  
  def index; end
    
  def show
    str = File.read("#{DATA_PATH}/reports/1.json")
    str = JSON(str).symbolize_keys
    
    @report = NoReport.new str
    @report.tags = ['tag2', 'tag-4']
    
    u = NoUser.new
    u.email = '543@gmail.com'
    u.name = 'Andy Roth'
    @report.no_user = u
    
    city = NoCity.new :name => 'Angora', :name_seo => 'Angora'
    city.no_photo = NoPhoto.new
    @report.no_city = city
    
    
    
  end
  
end



