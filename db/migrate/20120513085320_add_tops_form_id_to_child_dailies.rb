class AddTopsFormIdToChildDailies < ActiveRecord::Migration
  def change
    add_column :child_dailies, :tops_form_id, :integer
    add_index :child_dailies, :tops_form_id
  end
end
