class Location < ActiveRecord::Base
  attr_accessible :title, :category, :description, :image_url
  has_many :current_waits
  
  before_destroy :ensure_not_referenced_by_any_current_wait

private

# ensure that there are no current wait times referencing this location
def ensure_not_referenced_by_any_current_wait
if current_waits.empty?
return true
else
errors.add(:base, 'Current waits present')
return false
end
end
end
