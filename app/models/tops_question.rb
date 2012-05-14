class TopsQuestion < ActiveRecord::Base
  attr_accessible :description, :qualifier_type_id
  
  has_many :tops_form
end
