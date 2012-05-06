class Person < ActiveRecord::Base
  attr_accessible :dob, :name

  validates :name, :presence => true

  # TO DO: date validation of dob
end
