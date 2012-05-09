class RelationshipType < ActiveRecord::Base
  attr_accessible :name, :backward_name

  validates :name, :presence => true

  before_save do
    self.backward_name = nil if backward_name.blank?
  end

  def name_of_backward_relationship
    backward_name || name
  end
end
