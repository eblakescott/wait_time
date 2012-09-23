class Location < ActiveRecord::Base
  attr_accessible :title, :category, :description, :image_url
  has_many :waits, :dependent => :destroy
end
