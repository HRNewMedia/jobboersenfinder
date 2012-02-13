class AddDragonflyColumnsToPlatforms < ActiveRecord::Migration
  def change
    change_table :platforms do |t|
      t.string :logo_uid
      t.string :logo_name
    end
  end
end
