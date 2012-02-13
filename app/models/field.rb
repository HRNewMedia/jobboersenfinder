class Field < ActiveRecord::Base

  default_scope order: 'fields.name ASC'

  # references_and_referenced_in_many :occupational_platforms, class_name: 'Platform'
  # references_and_referenced_in_many :specialized_platforms, class_name: 'Platform'

  has_many :occupationals, dependent: :destroy
  has_many :occupational_platforms, through: :occupationals
  has_many :specializations, dependent: :destroy
  has_many :specialized_platforms, through: :occupationals

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false
end
