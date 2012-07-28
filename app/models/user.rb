

class User < ActiveRecord::Base
  
#  devise :registerable,
#    # :recoverable, :trackable, :validatable, :rememberable,
#    # :token_authenticatable, 
#    # :database_authenticatable,
#    # :encryptable, :confirmable, :lockable, :timeoutable, 
#    :omniauthable, :omniauth_providers => [ :facebook ]
    
  
  def photo
    StubPhoto.new
  end
  
  def profile_photo
    StubPhoto.new
  end
  
  attr_accessor :username
  
end