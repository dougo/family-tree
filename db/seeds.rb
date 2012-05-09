# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

parent =
  RelationshipType.find_or_create_by_name! 'parent', backward_name: 'child'
spouse =
  RelationshipType.find_or_create_by_name! 'spouse'
ex_spouse =
  RelationshipType.find_or_create_by_name! 'ex-spouse'
sibling =
  RelationshipType.find_or_create_by_name! 'sibling'
stepparent =
  RelationshipType.find_or_create_by_name! 'stepparent', backward_name: 'stepchild'
half_sibling =
  RelationshipType.find_or_create_by_name! 'half-sibling'
step_sibling =
  RelationshipType.find_or_create_by_name! 'step-sibling'
godparent =
  RelationshipType.find_or_create_by_name! 'godparent', backward_name: 'godchild'

doug =
  Person.find_or_create_by_name! 'Doug', date_of_birth: '1970-11-10'
dad =
  Person.find_or_create_by_name! 'Dave', date_of_birth: '1947'
mom =
  Person.find_or_create_by_name! 'Penny', date_of_birth: '1950'
david =
  Person.find_or_create_by_name! 'David', date_of_birth: '1954'
sarah =
  Person.find_or_create_by_name! 'Sarah', date_of_birth: '1958'
danielle =
  Person.find_or_create_by_name! 'Danielle', date_of_birth: '1982'

def relate(p, t, rp)
  p.relationships.find_or_create_by_relationship_type_id_and_related_person_id!(t.id, rp.id)
end

relate(doug, parent, dad)
relate(doug, parent, mom)
relate(mom, sibling, david)
relate(dad, ex_spouse, mom)
relate(dad, spouse, sarah)
relate(danielle, parent, dad)
relate(danielle, parent, sarah)
relate(danielle, half_sibling, doug)
