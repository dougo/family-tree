class RelationshipType < ActiveRecord::Base
  attr_accessible :backward_name, :forward_name

  validates :backward_name, :forward_name, :presence => true
end
