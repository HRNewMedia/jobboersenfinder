class EmploymentType < ActiveRecord::Base

  default_scope order: 'employment_types.name ASC'

  has_and_belongs_to_many :platforms

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false
end
