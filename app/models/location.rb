class Location < ActiveRecord::Base
  attr_accessible :description, :image_url, :title, :category
  has_many :waits, dependent: :destroy
end
