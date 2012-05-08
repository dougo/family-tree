require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  test 'require all fields' do
    r = Relationship.new
    assert !r.valid?
    r.relationship_type = relationship_types(:one)
    assert !r.valid?
    r.person = people(:one)
    assert !r.valid?
    r.related_person = people(:two)
    assert r.valid?
  end
end
