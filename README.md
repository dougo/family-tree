FamilyTree
==========

An application that allows the user to manage family trees.

This app was developed with Ruby 1.9.3 and Rails 3.2.3, with SQLite as
the database.


Installation
------------

 # bundle

 # cp config/database.yml.example config/database.yml

 # rake db:setup

 # rake test

 # rails server

Browse to: localhost:3000


Future work
-----------

There is only one global list of people that anyone can view and edit.
There should be user accounts, each with its own set of people.

When you create a relationship, the relationship type, person, and
related person all have to already exist.  You should be able to add a
type and/or person from the new/edit relationship forms.

Also, probably you should just be able to edit relationships directly
from the edit person page, rather than having to go to the list
relationships page.

When you show a person, it shows both forward and backward
relationships, e.g. you see both parents and children.  You can only
add/edit forward relationships, though; you should also be able to
add/edit backward relationships, e.g. add a child to a parent, rather
than having to navigate to the child and add a parent.

UI styling would be nice...  Also AJAX.

