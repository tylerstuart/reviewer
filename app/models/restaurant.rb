class Restaurant < ActiveRecord::Base
  attr_accessible :address, :city, :link, :name, :phone, :rating, :review, :state, :zip
end
