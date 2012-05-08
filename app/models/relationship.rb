class Relationship < ActiveRecord::Base
  belongs_to :relationship_type
  belongs_to :person
  belongs_to :related_person, :class_name => 'Person'
end
