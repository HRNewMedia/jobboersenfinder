class MoveOccupationalFieldsToFields < ActiveRecord::Migration
  
  # migration mock models
  
  class OccupationalField < ActiveRecord::Base
  end
  
  class Field < ActiveRecord::Base
  end
  
  def self.up
    OccupationalField.all.each do |occu|
      Field.create!(:name => occu.name)
    end
  end

  def self.down
    Field.all.each do |field|
      OccupationalField.find_or_create_by_name(:name => field.name)
    end
  end
end
