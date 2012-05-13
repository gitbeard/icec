class TopsQuestion < ActiveRecord::Base
  attr_accessible :description, :qualifier_type_id
  
  belongs_to :tops_form
end
