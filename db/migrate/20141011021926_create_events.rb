class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :creator
      t.string :category
      t.integer :size
      t.datetime :date
      t.datetime :rsvp

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
