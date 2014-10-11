class CreateRankings < ActiveRecord::Migration
  def self.up
    create_table :rankings do |t|
      t.integer :assigner
      t.integer :ranking
      t.belongs_to :user

      t.timestamps
    end
  end

  def self.down
    drop_table :rankings
  end
end
