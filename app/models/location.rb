class Location < ActiveRecord::Base
  has_many :lines, dependent: :destroy
end
