class Attendance < ActiveRecord::Base
  attr_accessable :event_id
  
  belongs_to :user
  belongs_to :event
end
