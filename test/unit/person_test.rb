require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'name is required' do
    assert !Person.new.valid?
    assert Person.new(:name => 'Test').valid?
  end
end
