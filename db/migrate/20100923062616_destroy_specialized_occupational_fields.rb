class DestroySpecializedOccupationalFields < ActiveRecord::Migration
  def self.up
    Platform.all.each do |p|
      p.specialized_occupational_fields.clear
      p.save
    end
  end

  def self.down
    Platform.all.each do |p|
      p.occupational_fields.each do |field|
        p.specialized_occupational_fields << field
      end
    end
  end
end
