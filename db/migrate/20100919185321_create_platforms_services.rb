class CreatePlatformsServices < ActiveRecord::Migration
  def self.up
    create_table :platforms_services, :id => false do |t|
			t.integer :platform_id
			t.integer :service_id
			
			t.timestamps
		end
  end

  def self.down
    drop_table :platforms_services
  end
end
