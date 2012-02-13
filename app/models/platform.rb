class Platform < ActiveRecord::Base

  # default ordering
  default_scope :order => "platforms.name ASC"

  # associations
  has_many :occupationals, :dependent => :destroy
  has_many :occupational_fields, :through => :occupationals, :source => :field

  has_many :specializations, :dependent => :destroy
  has_many :specialized_occupational_fields, :through => :specializations, :source => :field

  has_and_belongs_to_many :kinds
  has_and_belongs_to_many :employment_types
  has_and_belongs_to_many :features

  # supporter/cooperations association
  has_many :cooperations, :class_name => "Platform", :foreign_key => "supporter_id"
  belongs_to :supporter,  :class_name => "Platform"

  # validations
  validates_presence_of   :name, :description, :url, :activity, :rank
  validates_uniqueness_of :name, :case_sensitive => false

  # named scopes
  scope :supported, conditions: "supporter_id IS NOT NULL"
  scope :unsupported, conditions: { supporter_id: nil }
  scope :published, conditions: { is_published: true }

  image_accessor :logo

  def self.rank_collection
    (0..4).to_a
  end
end
