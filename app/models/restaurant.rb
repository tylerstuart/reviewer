class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :link, :name, :phone, :rating, :review, :state, :zip, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
