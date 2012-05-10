class CreateEmailMessages < ActiveRecord::Migration
  def change
    create_table :email_messages do |t|
      t.datetime :date
      t.integer :child_id
      t.integer :daily_note_id
      t.integer :child_daily_id
      t.string :to_address
      t.datetime :sent_time, :default => "9999-12-31 23:59:59"

      t.timestamps
    end
  end
end
