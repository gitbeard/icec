class RemoveCBsFromChildDailies < ActiveRecord::Migration
  def change
    remove_column :child_dailies, :cb1
    remove_column :child_dailies, :cb2
    remove_column :child_dailies, :cb3
  end
end
