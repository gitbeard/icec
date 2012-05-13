class AddIndexToTopsForms < ActiveRecord::Migration
  def change
    add_index :tops_forms, :tops_question_id
  end
end
