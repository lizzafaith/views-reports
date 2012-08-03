

class ReportsController < ApplicationController
  
  helper 'images'
  helper 'users'
  helper_method :current_user
  
  def index; end
    
  def show
    
    @report = StubReport.new
    
    

  end
  
  private
  
  def current_user
    ;
  end

  
end



