class Occupational < ActiveRecord::Base

  belongs_to :platform
  belongs_to :field

  validates_uniqueness_of :field_id, :scope => :platform_id
  validates_uniqueness_of :platform_id, :scope => :field_id
end
