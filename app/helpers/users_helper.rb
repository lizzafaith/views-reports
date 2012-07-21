
require 'digest/sha1'




module UsersHelper
  
  def set_username_path
    "/users/set-username"    
  end
  
  
  def facebook_login
    
    path_2 = user_omniauth_authorize_path(:facebook)
    return link_to image_fb, path_2, :class => :fb
    
    case @parsed_locale
    when 'pt'
      app_id = FB_ID_PT
      url = PT_URL
      
    when 'ru'
      app_id = FB_ID_RU
      url = RU_URL
      
    when 'en'
      app_id = FB_ID_EN
      url = EN_URL
      
    end
      
    redirect_url = "http://#{url}/users/auth/callbacks/facebook"
    state = Digest::SHA1.hexdigest rand(1000).to_s
    path = "https://www.facebook.com/dialog/oauth?client_id=#{app_id}&redirect_uri=#{redirect_url}&scope=email&state=#{state}"
    
    
    
  end
  
  def recent_activity_path user
    '/users/show/' + user[:username] + '/recent_activity'
  end
  
  def show_user_path user
    return '/users/show/' + user[:username] unless user[:username].blank?
    '/users/' + user[:id].to_s
  end
  
  def set_city_path
    '/users/set-city'
  end
  
  def new_profile_photo_path
    '/photos/new?new_profile_photo=1'
  end
  
  def dashboard_path
    '/users/dashboard'
  end
  
  def user_path user
    if !user[:username].blank?
      return '/users/show/' + user[:username]
    else
      return '/users/' + user[:id].to_s
    end
  end
  
  def edit_user_path user
    '/users/' + user.to_param + '/edit'
  end
  
  def user_contact_path user
    '/users/' + user[:username] + '/contact'
  end
  
  def sign_in_path
    '/users/sign_in'
  end
  
  def sign_out_path
    '/users/sign_out'
  end
  
  def user_reports_path u
    "/users/show/#{u.username}/reports"
  end
  
  def user_galleries_path u
    "/users/show/#{u.username}/galleries"
  end
  
  def user_videos_path u
    "/users/show/#{u.username}/videos"
  end
  
  def user_add_path u
    "/users/add/#{u[:id].to_s}"
  end
  
end
