class CurrentWait < ActiveRecord::Base
  belongs_to :location
  belongs_to :wait
  attr_accessible :location_id, :wait_id
end
