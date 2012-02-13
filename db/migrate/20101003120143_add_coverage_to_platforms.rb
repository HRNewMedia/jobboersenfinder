class AddCoverageToPlatforms < ActiveRecord::Migration
  def self.up
    add_column :platforms, :coverage, :string
  end

  def self.down
    remove_column :platforms, :coverage
  end
end
