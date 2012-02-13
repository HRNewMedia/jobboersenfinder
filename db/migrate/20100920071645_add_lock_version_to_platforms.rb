class AddLockVersionToPlatforms < ActiveRecord::Migration
  def self.up
    add_column :platforms, :lock_version, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :platforms, :lock_version
  end
end
