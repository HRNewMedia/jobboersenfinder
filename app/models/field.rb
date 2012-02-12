class Field
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name

  references_and_referenced_in_many :occupational_platforms, class_name: 'Platform'
  references_and_referenced_in_many :specialized_platforms, class_name: 'Platform'

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false
end
