

class ReportsController < ApplicationController
  
  
  helper :all, :images, :users
  helper :devv if Rails.env.development?
  
  def index; end
    
  def show
    
    @report = NoReport.where(:seo => params[:seo]).first
    
  end
  
end



