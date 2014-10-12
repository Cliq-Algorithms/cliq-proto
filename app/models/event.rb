class Event < ActiveRecord::Base

  has_many :attendances
  has_many :users, through: :attendances
  attr_accessible :name, :discription, :date, :lat, :lon,:tags, :radius,
                  :creator,:category,:size, :date, :rsvp
  belongs_to :owner, :class_name => "User", :foreign_key => :user_id


end
