class ChildDaily < ActiveRecord::Base
  attr_accessible :cb1, :cb2, :cb3, :child_id, :date, :individual_message
  
  belongs_to :child
  belongs_to :email_message # May take this out.
end
