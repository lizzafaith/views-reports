


class StubReport
  
  attr_accessor :name
  attr_accessor :created_at
  attr_accessor :subhead
  attr_accessor :descr
  
  def user
    User.new
  end
  
  def city
    City.new
  end

  def tags
    return []
  end
  
  def galleries
    []
  end
  
  def videos
    []
  end
  
  def recommended
    []
  end
  
  
  
end