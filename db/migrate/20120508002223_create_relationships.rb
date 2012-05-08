class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :relationship_type
      t.references :person
      t.references :related_person

      t.timestamps
    end
    add_index :relationships, :relationship_type_id
    add_index :relationships, :person_id
    add_index :relationships, :related_person_id
  end
end
