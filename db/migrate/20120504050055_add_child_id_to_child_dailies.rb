class AddChildIdToChildDailies < ActiveRecord::Migration
  def change
    add_index :child_dailies, :child_id
  end
end
