require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'require name' do
    assert !Person.new.valid?
    assert Person.new(:name => 'Test').valid?
  end
end
