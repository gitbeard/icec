class CreateDailyNotes < ActiveRecord::Migration
  def change
    create_table :daily_notes do |t|
      t.datetime :date
      t.text :note

      t.timestamps
    end
  end
end
