

NoPhoto = NoPhotoStub

class ApplicationController < ActionController::Base
  
  include Mixin::AppHelper
  
  before_filter :set_action_name
  before_filter :set_lists
  
  protect_from_forgery
  
  
  
end
