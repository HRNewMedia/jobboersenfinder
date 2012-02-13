class CreateFields < ActiveRecord::Migration
  def self.up
    create_table :fields do |t|
      t.string :name
      t.integer :lock_version, :default => 0, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :fields
  end
end
