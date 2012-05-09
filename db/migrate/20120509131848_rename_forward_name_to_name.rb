class RenameForwardNameToName < ActiveRecord::Migration
  def change
    rename_column :relationship_types, :forward_name, :name
  end
end
