class Wait < ActiveRecord::Base
  attr_accessible :location_id, :time
  belongs_to :locations
end
