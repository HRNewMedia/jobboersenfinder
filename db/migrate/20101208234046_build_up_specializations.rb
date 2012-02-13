class BuildUpSpecializations < ActiveRecord::Migration
  
  # migration mock models
    
  class OccupationalField < ActiveRecord::Base; end
  class OccupationalFieldsPlatforms < ActiveRecord::Base; end
  class Specialization < ActiveRecord::Base; end
  
  def self.up
    OccupationalFieldsPlatforms.all.each do |match|
      old_field = OccupationalField.find(match.occupational_field_id)
      new_field = Field.find_by_name(old_field.name)
      Specialization.create!(:platform_id => match.platform_id, :field_id => new_field.id)
    end    
  end

  def self.down
    Specialization.all.each do |special|
      old_field = Field.find(special.field_id)
      new_field = OccupationalField.find_or_create_by_name(old_field.name)
      OccupationalFieldsPlatforms.create!(:platform_id => special.platform_id, :occupational_field_id  => new_field.id)
    end
  end
end
