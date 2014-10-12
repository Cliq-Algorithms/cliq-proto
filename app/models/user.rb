# == Schema Information
# Schema version: 20100829021049
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  name               :string(255)
#  email              :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#  admin              :boolean
#

class User < ActiveRecord::Base
  attr_accessible :name, :phone_number, :subject, :score, :max_score

  validates :name,  :presence => true,
                    :length   => { :maximum => 50 }

  has_many :attendances, :dependent => :destroy
  has_many :events, :through => :attendances
  has_many :event_as_owner, :class_name => "Event"

  after_initialize :init

  def init
    number = self.phone_number
    self.phone_number ||= ""
    self.phone_number = (self.phone_number+"a").gsub(/\D/, '')
    self.score ||= 0
    self.max_score ||= 0
  end

  def self.attendee?(event)
    attendances.find_by_event_id(event)
  end

  def join!(event)
      attendances.create!(:event_id => event.id)
  end

  def self.leave!(event)
    attendances.find_by_event_id(event).destroy
  end
end
