class CreateTopsQuestions < ActiveRecord::Migration
  def change
    create_table :tops_questions do |t|
      t.text :description
      t.integer :qualifier_type_id

      t.timestamps
    end
  end
end
