class Wait < ActiveRecord::Base
  has_many :current_waits, dependent: :destroy
end
