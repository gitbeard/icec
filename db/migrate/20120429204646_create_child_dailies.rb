class CreateChildDailies < ActiveRecord::Migration
  def change
    create_table :child_dailies do |t|
      t.integer :child_id
      t.datetime :date
      t.text :individual_message
      t.boolean :cb1
      t.boolean :cb2
      t.boolean :cb3

      t.timestamps
    end
  end
end
