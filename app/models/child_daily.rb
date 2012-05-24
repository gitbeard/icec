class ChildDaily < ActiveRecord::Base
  attr_accessible :child_id, :date, :individual_message, :tops_form, :tops_forms, :tops_questions, :tops_form_attributes
  
  belongs_to :child
  belongs_to :email_message # May take this out.
  
  has_one :tops_form
  has_many :tops_questions, :through => :tops_forms, :foreign_key => :tops_question_id
  
  accepts_nested_attributes_for :tops_form
  accepts_nested_attributes_for :tops_questions
end
