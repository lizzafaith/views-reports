# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


# require 'bson'

name = 'Angora'
city = NoCity.where(:name => name).first
if city.blank?
  city = NoCity.new :name => name, :name_seo => 'Angora'
  city.no_photo = no_photo
  city.save
end

email = '543@gmail.com'
u = NoUser.where(:email => email).first
if u.blank?
  u = NoUser.new
  u.email = email
  u.name = 'Andy Roth'
  u.save
end

no_photo = NoPhotoStub.new
no_photo.save

# the following fails in a good way if already exists
(1..4).each do |i|
  str = File.read("#{DATA_PATH}/reports/#{i}.json")
  str = JSON(str).symbolize_keys

  report = NoReport.create
  report.tags = ['tag2', 'tag-4']
  report.name = str[:name]
  report.descr = str[:descr]
  report.seo = str[:name_seo]
  
  report.is_feature = 1

  report.no_photos = [ no_photo ]

  
  report.no_user = u
  
  report.no_city = city

  if report.save
    puts "saved #{report.name}"
  end
end

seo = 'C-A-C'
venue = NoVenue.where(:seo => seo ).first
if venue.blank?
  v = NoVenue.new
  v.name = 'Computational Arts Corp'
  v.seo = seo
  v.no_city = city
  v.descr = "We are a full-stack RoR development shop in San Francisco."
  
  v.no_photos = [ NoPhotoStub.first ]
  
  # services
  # portfolio
  # team
  # contact
  
  rs = NoReport.public.limit(4)
  v.no_reports = [ rs ]
  
  if v.save
    puts " + venue "
  end
end