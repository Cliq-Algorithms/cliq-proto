class EventsAssoiation < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      
      t.belongs_to :user
  end

  def self.down
  end
end
