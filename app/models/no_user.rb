

class NoUser < ForUser
  
  include Mongoid::Document
  
  devise :registerable,
    # :recoverable, :trackable, :validatable, :rememberable,
  # :token_authenticatable, 
  # :database_authenticatable,
  # :encryptable, :confirmable, :lockable, :timeoutable, 
  :omniauthable, :omniauth_providers => [ :facebook ]
  
end

