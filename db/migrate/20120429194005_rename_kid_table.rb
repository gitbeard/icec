class RenameKidTable < ActiveRecord::Migration
  def up
    rename_table :kids, :children
  end

  def down
    rename_table :children, :kids
  end
end
