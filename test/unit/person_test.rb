require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'require name' do
    assert !Person.new.valid?
    assert Person.new(:name => 'Test').valid?
  end

  test 'allow partial dob' do
    assert Person.new(name: 'Test', date_of_birth: '1970').valid?
    assert Person.new(name: 'Test', date_of_birth: '1970-11').valid?
    assert Person.new(name: 'Test', date_of_birth: '1970-11-10').valid?
    assert !Person.new(name: 'Test', date_of_birth: '11-10').valid?
  end
end
