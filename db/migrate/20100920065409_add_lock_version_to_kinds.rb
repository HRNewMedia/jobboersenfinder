class AddLockVersionToKinds < ActiveRecord::Migration
  def self.up
    add_column :kinds, :lock_version, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :kinds, :lock_version
  end
end
