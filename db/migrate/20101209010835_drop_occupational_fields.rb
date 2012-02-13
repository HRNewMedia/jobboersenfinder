class DropOccupationalFields < ActiveRecord::Migration
  def self.up
    drop_table :occupational_fields
  end

  def self.down
    create_table :occupational_fields do |t|
      t.string  :name
      t.integer :lock_version, :default => 0, :null => false

      t.timestamps
    end
  end
end
