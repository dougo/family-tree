class Relationship < ActiveRecord::Base
  attr_accessible :relationship_type_id, :person_id, :related_person_id

  belongs_to :relationship_type
  belongs_to :person
  belongs_to :related_person, :class_name => 'Person'

  validates :relationship_type, :person, :related_person, :presence => true
end
