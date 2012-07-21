class ApplicationController < ActionController::Base
  
  include Mixin::AppHelper
  
  protect_from_forgery
  
  before_filter :set_action_name
  before_filter :set_lists
  
  private
  
  
end
