class CreatePlatforms < ActiveRecord::Migration
  def self.up
    create_table :platforms do |t|
      t.string  :name
      t.text    :description
      t.string  :url, :limit => 500
      t.integer :activity
      t.integer :rank
      t.boolean :is_specialized
      t.boolean :is_filterable
      t.boolean :is_regional
      t.boolean :is_published

      t.timestamps
    end
  end

  def self.down
    drop_table :platforms
  end
end
