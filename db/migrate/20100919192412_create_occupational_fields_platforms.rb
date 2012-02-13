class CreateOccupationalFieldsPlatforms < ActiveRecord::Migration
  def self.up
    create_table :occupational_fields_platforms, :id => false do |t|
			t.integer :occupational_field_id
			t.integer :platform_id
			
			t.timestamps
		end
  end

  def self.down
    drop_table :occupational_fields_platforms
  end
end
