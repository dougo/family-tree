require 'test_helper'

class RelationshipTypeTest < ActiveSupport::TestCase
  test 'both names are required' do
    assert !RelationshipType.new.valid?
    assert !RelationshipType.new(:forward_name => 'parent').valid?
    assert RelationshipType.new(:forward_name => 'parent',
                                :backward_name => 'child').valid?
  end
end
