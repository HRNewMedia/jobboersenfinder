class CreateEmploymentTypesPlatforms < ActiveRecord::Migration
  def self.up
    create_table :employment_types_platforms, :id => false do |t|
			t.integer :employment_type_id
			t.integer :platform_id
			
			t.timestamps
		end
  end

  def self.down
    drop_table :employment_types_platforms
  end
end
