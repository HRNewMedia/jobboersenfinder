class AddSupporterIdToPlatforms < ActiveRecord::Migration
  def self.up
    add_column :platforms, :supporter_id, :integer
  end

  def self.down
    remove_column :platforms, :supporter_id
  end
end
