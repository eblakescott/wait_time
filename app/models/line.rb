class Line < ActiveRecord::Base
  belongs_to :location
  attr_accessible :location_id
end
