class CreateKindsPlatforms < ActiveRecord::Migration
  def self.up
    create_table :kinds_platforms, :id => false do |t|
			t.integer :kind_id
			t.integer :platform_id
			
			t.timestamps
		end
  end

  def self.down
    drop_table :kinds_platforms
  end
end
