class Task < ActiveRecord::Base
  attr_accessible :description, :done, :project_id
  belongs_to :project
end
