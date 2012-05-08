class RelationshipType < ActiveRecord::Base
  attr_accessible :backward_name, :forward_name
end
