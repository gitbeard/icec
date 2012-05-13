class TopsForm < ActiveRecord::Base
  attr_accessible :checked, :child_daily_id, :note, :qualifier_value_id, :tops_question_id
  
  has_many :tops_question
  belongs_to :child_daily
end
