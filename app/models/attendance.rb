class Attendance < ActiveRecord::Base
  attr_accessible :event_id

  belongs_to :user
  belongs_to :event
end
