class Location < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :category
end
