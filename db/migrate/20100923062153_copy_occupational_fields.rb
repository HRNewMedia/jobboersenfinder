class CopyOccupationalFields < ActiveRecord::Migration
  def self.up
    Platform.all.each do |p|
      p.specialized_occupational_fields.each do |field|
        p.occupational_fields << field
        p.save
      end
    end
  end

  def self.down
    Platform.all.each do |p|
      p.occupational_fields.destroy_all
      p.save
    end
  end
end
