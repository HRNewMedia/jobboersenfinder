class DropOccupationalFieldsPlatforms < ActiveRecord::Migration
  def self.up
    drop_table :occupational_fields_platforms
  end

  def self.down
    create_table :occupational_fields_platforms, :id => false do |t|
			t.integer :occupational_field_id
			t.integer :platform_id
			
			t.timestamps
		end
  end
end
