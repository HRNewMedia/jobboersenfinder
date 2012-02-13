class AddLockVersionToOccupationalFields < ActiveRecord::Migration
  def self.up
    add_column :occupational_fields, :lock_version, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :occupational_fields, :lock_version
  end
end
