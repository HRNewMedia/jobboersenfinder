class AddLockVersionToEmploymentTypes < ActiveRecord::Migration
  def self.up
    add_column :employment_types, :lock_version, :integer, :default => 0, :null => false
  end

  def self.down
    remove_column :employment_types, :lock_version
  end
end
