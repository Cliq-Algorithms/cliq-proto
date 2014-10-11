class Event < ActiveRecord::Base

  has_many :attendances
  has_many :attendees :through => :attendances, :source => :user
  attr_accessable :name, :discription, :date, :lat, :lon,:tags, :radius,
  attr_accessable :creator,:category,:size, :date, :rsvp
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id


end
