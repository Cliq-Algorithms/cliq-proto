class UpdateUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      add_column :users, :lat, :decimal, precision: 9, scale: 6
      add_column :users, :lon, :decimal, precision: 9, scale: 6
      add_column :users, :rank, :int
      add_column :users, :radius, :int
    end
  end

  def self.down
    remove_column :users, :lat, :decimal, precision: 9, scale: 6
    remove_column :users, :lon, :decimal, precision: 9, scale: 6
    remove_column :users, :rank, :int
    remove_column :users, :radius, :int
  end
end
