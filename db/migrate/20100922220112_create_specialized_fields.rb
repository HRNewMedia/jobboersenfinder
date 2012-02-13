class CreateSpecializedFields < ActiveRecord::Migration
  def self.up
    create_table :specialized_fields do |t|
      t.integer :platform_id
      t.integer :occupational_field_id

      t.timestamps
    end
  end

  def self.down
    drop_table :specialized_fields
  end
end
