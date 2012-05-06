class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :name, :null => false
      t.date :dob

      t.timestamps
    end
  end
end
