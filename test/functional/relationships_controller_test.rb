require 'test_helper'

class RelationshipsControllerTest < ActionController::TestCase
  setup do
    @relationship = relationships(:one)
    @person = @relationship.person
    @relationship_params = {
      relationship_type_id: relationship_types(:one),
      person_id: people(:one),
      related_person_id: people(:two)
    }
  end

  test "should get index" do
    get :index, person_id: @person.id
    assert_response :success
    assert_not_nil assigns(:relationships)
  end

  test "should get new" do
    get :new, person_id: @person.id
    assert_response :success
  end

  test "should create relationship" do
    assert_difference('Relationship.count') do
      post :create, person_id: @person.id, relationship: @relationship_params
    end

    assert_redirected_to person_relationship_path(@person, assigns(:relationship))
  end

  test "should show relationship" do
    get :show, person_id: @person.id, id: @relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, person_id: @person.id, id: @relationship
    assert_response :success
  end

  test "should update relationship" do
    put :update, person_id: @person.id, id: @relationship, relationship: @relationship_params
    assert_redirected_to person_relationship_path(@person, assigns(:relationship))
  end

  test "should destroy relationship" do
    assert_difference('Relationship.count', -1) do
      delete :destroy, person_id: @person.id, id: @relationship
    end

    assert_redirected_to person_relationships_path(@person)
  end
end
