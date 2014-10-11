class UpdateEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      add_column :events, :lat, :decimal, precision: 9, scale: 6
      add_column :events, :lon, :decimal, precision: 9, scale: 6
      add_column :events, :tags, :text, array: true, default: []
      add_column :events, :radius, :int
    end
  end

  def self.down
    remove_column :events, :lat, :decimal, precision: 9, scale: 6
    remove_column :events, :lon, :decimal, precision: 9, scale: 6
    remove_column :events, :tags, :text, array: true, default: []
    remove_column :events, :radius, :int
  end
end
