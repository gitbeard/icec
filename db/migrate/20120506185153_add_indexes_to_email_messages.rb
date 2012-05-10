class AddIndexesToEmailMessages < ActiveRecord::Migration
  def change
    add_index :email_messages, :child_id
    add_index :email_messages, :daily_note_id
    add_index :email_messages, :child_daily_id
  end
end
