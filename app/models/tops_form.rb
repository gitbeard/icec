class TopsForm < ActiveRecord::Base
attr_accessible :checked, :child_daily_id, :note, :qualifier_value_id, :tops_question_id
  
  belongs_to :tops_question
  belongs_to :child_daily
  
  accepts_nested_attributes_for :tops_question
  
  #def questions(questions)
   # @questions = TopsQuestions.all
   # @questions.each do |q|
   #   @tops_forms = TopsForm.new(:tops_question => q)
   # end
  #end
end
