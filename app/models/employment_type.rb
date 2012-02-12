class EmploymentType
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  references_and_referenced_in_many :platforms

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false
end
