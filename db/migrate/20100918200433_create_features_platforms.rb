class CreateFeaturesPlatforms < ActiveRecord::Migration
	def self.up
		create_table :features_platforms, :id => false do |t|
			t.integer :feature_id
			t.integer :platform_id
			
			t.timestamps
		end
  end

  def self.down
		drop_table :features_platforms
  end
end
