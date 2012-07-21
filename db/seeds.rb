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

(1..4).each do |i|

  str = File.read("#{DATA_PATH}/reports/#{i}.json")
  str = JSON(str).symbolize_keys

  report = NoReport.create
  report.tags = ['tag2', 'tag-4']
  report.name = str[:name]
  report.descr = str[:descr]
  report.seo = str[:name_seo]
  
  report.is_feature = 1

  no_photo = NoPhotoStub.new
  no_photo.save
  report.no_photos = [ no_photo ]

  
  report.no_user = u
  
  report.no_city = city

  if report.save
    puts "saved #{report.name}"
  else
    report.errors.each do |e|
      puts "Did not save because of: #{e}"
    end
  end
  
end