require 'test_helper'

class AddParentAndChildTest < ActionDispatch::IntegrationTest
  fixtures :all

  test 'add parent and child' do
    visit root_url
    click_link 'List relationship types'

    click_link 'New Relationship type'
    fill_in 'Name', :with => 'parent'
    fill_in 'Backward name', :with => 'child'
    click_button 'Save'
    click_link 'Back'

    click_link 'Back'
    click_link 'List people'

    click_link 'New Person'
    fill_in 'Name', :with => 'Mama'
    fill_in 'Date of birth', :with => '1980'
    click_button 'Save'
    click_link 'Back'

    click_link 'New Person'
    fill_in 'Name', :with => 'Baby'
    fill_in 'Date of birth', :with => '2012'
    click_button 'Save'
    
    click_link 'New Relationship'
    select 'parent', :from => 'Relationship type'
    select 'Mama', :from => 'Related person'
    click_button 'Save'
    click_link 'Back'

    click_link 'Back'
    click_link 'Show'
    click_link 'Mama'
    click_link 'Baby'
  end
end
