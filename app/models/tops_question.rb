class TopsQuestion < ActiveRecord::Base
  attr_accessible :description, :qualifier_type_id, :tops_qualifier
  
  has_many :tops_form
  has_many :child_dailies, :through => :tops_form, :foreign_key => :child_daily_id
  
  belongs_to :tops_qualifier
end
