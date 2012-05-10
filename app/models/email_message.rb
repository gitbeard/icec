class EmailMessage < ActiveRecord::Base
  attr_accessible :child_daily_id, :child_id, :daily_note_id, :date, :sent_time, :to_address

  belongs_to :daily_message
  belongs_to :child
  belongs_to :child_daily # May take this one out.

end
