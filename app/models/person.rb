class Person < ActiveRecord::Base
  attr_accessible :date_of_birth, :name

  validates :name, :presence => true
  validates :date_of_birth, allow_nil: true, format: {
    # TO DO: validate month/date in correct range
    with: /\A\d{4}(-\d{1,2}(-\d{1,2})?)?\z/
  }

  has_many :relationships, :dependent => :destroy
  has_many :reverse_relationships, :dependent => :destroy, class_name: 'Relationship', foreign_key: 'related_person_id'

  def all_relationships
    relationships | reverse_relationships
  end
end
