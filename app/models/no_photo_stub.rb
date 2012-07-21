

class AttachmentStub
  
  def url size = nil
    if size == :thumb
      return "http://s3.amazonaws.com/ISh-development/reports/thumb/13606/wickerpark1.jpg"
    end
    return 'http://s3.amazonaws.com/ISh-development/photos/large/3362/be-yourself.jpg'
  end
  
end

class NoPhotoStub
  
  include Mongoid::Document
  include Mongoid::Paperclip
  
  belongs_to :no_report
  belongs_to :no_venue
  belongs_to :no_user
  
  belongs_to :no_city
  
  field :url, :type => String
  
  def url size = nil
    if size == :thumb
      return "http://s3.amazonaws.com/ISh-development/reports/thumb/13606/wickerpark1.jpg"
    end
    return 'http://s3.amazonaws.com/ISh-development/photos/large/3362/be-yourself.jpg'
  end
  
  def photo
    AttachmentStub.new
  end
  
  

end
