class DropServices < ActiveRecord::Migration
  def self.up
    drop_table :platforms_services
    drop_table :services
  end

  def self.down
    create_table :services do |t|
      t.string :name

      t.timestamps
    end
    
    create_table :platforms_services, :id => false do |t|
			t.integer :platform_id
			t.integer :service_id
			
			t.timestamps
		end
  end
end
