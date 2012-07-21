

class ReportsController < ApplicationController
  
  def index; end
    
  def show
    str = File.read('app/data/reports/view/1.json')
    str = JSON(str).symbolize_keys
    
    @report = NoReport.new str
    @report.tags = ['tag2', 'tag-4']
    
    u = NoUser.new
    u.email = '543@gmail.com'
    u.name = 'Andy Roth'
    @report.no_user = u
    
    city = NoCity.new :name => 'Angora', :name_seo => 'Angora'
    @report.no_city = city
    
    
    
  end
  
end



