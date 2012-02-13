class AddLockVersionToFeatures < ActiveRecord::Migration
  def self.up
    add_column :features, :lock_version, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :features, :lock_version
  end
end
