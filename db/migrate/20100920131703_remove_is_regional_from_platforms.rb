class RemoveIsRegionalFromPlatforms < ActiveRecord::Migration
  def self.up
    remove_column :platforms, :is_regional
  end

  def self.down
    add_column :platforms, :is_regional, :boolean
  end
end
