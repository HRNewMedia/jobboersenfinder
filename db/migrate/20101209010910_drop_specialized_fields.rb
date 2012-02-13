class DropSpecializedFields < ActiveRecord::Migration
  def self.up
    drop_table :specialized_fields
  end

  def self.down
    create_table :specialized_fields do |t|
      t.integer :platform_id
      t.integer :occupational_field_id
      t.boolean :is_specialized

      t.timestamps
    end
  end
end
