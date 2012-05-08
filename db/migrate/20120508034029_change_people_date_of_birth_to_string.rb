class ChangePeopleDateOfBirthToString < ActiveRecord::Migration
  def up
    change_table :people do |t|
      t.change :date_of_birth, :string
    end
  end

  def down
    change_table :people do |t|
      t.change :date_of_birth, :date
    end
  end
end
