class ChildDaily < ActiveRecord::Base
  attr_accessible :child_id, :date, :individual_message
  
  belongs_to :child
  belongs_to :email_message # May take this out.
  
  has_many :tops_form
end
