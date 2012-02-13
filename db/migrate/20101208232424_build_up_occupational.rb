class BuildUpOccupational < ActiveRecord::Migration
  
  # migration mock models
    
  class SpecializedField < ActiveRecord::Base; end  
  class OccupationalField < ActiveRecord::Base; end
  
  def self.up
    SpecializedField.all.each do |spec|
      old_field = OccupationalField.find(spec.occupational_field_id)
      begin
        platform  = Platform.find(spec.platform_id)
        new_field = Field.find_by_name(old_field.name)
      rescue ActiveRecord::RecordNotFound
      else
          entry = Occupational.new(:platform => platform, :field => new_field)
          entry.save! if entry.valid?
      end
    end    
  end

  def self.down
    Occupational.all.each do |occu|
      old_field = Field.find(occu.field_id)
      new_field = OccupationalField.find_or_create_by_name(old_field.name)
      SpecializedField.create!(:platform_id => occu.platform_id, :occupational_field_id => new_field.id)
    end
  end
end
