class TopsQualifier < ActiveRecord::Base
  attr_accessible :type_id, :value_id, :value_name, :tops_questions
  
  has_many :tops_questions
end
