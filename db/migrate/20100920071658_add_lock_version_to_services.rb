class AddLockVersionToServices < ActiveRecord::Migration
  def self.up
    add_column :services, :lock_version, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :services, :lock_version
  end
end
