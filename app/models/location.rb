class Location < ActiveRecord::Base
  has_many :lines, dependent: :destroy
  attr_accessible :title, :category, :image_url, :description
end
