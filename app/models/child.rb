class Child < ActiveRecord::Base
attr_accessible :dad_first, :dob, :email_dad, :email_mom, :first_name, :icec_end, :icec_start, :last_name, :mom_first
  
  has_many :email_message
  has_many :child_daily
  
end
