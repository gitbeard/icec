class TopsQuestion < ActiveRecord::Base
  attr_accessible :description, :qualifier_type_id
  
  has_many :tops_forms
  has_many :child_dailies, through: :tops_forms
end
