class EventsOwnership < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      add_column :events, :owner, :integer
    end
  end

  def self.down
  end
end
