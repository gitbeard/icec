class CreateTopsForms < ActiveRecord::Migration
  def change
    create_table :tops_forms do |t|
      t.integer :child_daily_id
      t.integer :tops_question_id
      t.boolean :checked
      t.integer :qualifier_value_id
      t.text :note

      t.timestamps
    end
  end
end
