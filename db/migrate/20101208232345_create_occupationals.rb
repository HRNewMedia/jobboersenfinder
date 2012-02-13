class CreateOccupationals < ActiveRecord::Migration
  def self.up
    create_table :occupationals do |t|
      t.integer :platform_id
      t.integer :field_id

      t.timestamps
    end
  end

  def self.down
    drop_table :occupationals
  end
end
