class DailyNote < ActiveRecord::Base
  attr_accessible :date, :note

  has_one :email_message
end
