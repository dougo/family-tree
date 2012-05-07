class Person < ActiveRecord::Base
  attr_accessible :date_of_birth, :name

  validates :name, :presence => true
end
