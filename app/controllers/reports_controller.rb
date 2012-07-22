

class ReportsController < ApplicationController
  
  
  helper :devv if Rails.env.development?
  
  def index; end
    
  def show
    
    no_photo = NoPhotoStub.create
    
    @report = NoReport.where(:seo => params[:seo]).first
    @report.no_photos = [ no_photo ]
    @report.save
    
  end
  
end



