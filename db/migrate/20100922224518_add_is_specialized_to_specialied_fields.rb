class AddIsSpecializedToSpecialiedFields < ActiveRecord::Migration
  def self.up
    add_column :specialized_fields, :is_specialized, :boolean
  end

  def self.down
    remove_column :specialized_fields, :is_specialized
  end
end
