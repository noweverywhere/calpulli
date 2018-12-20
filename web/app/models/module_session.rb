class ModuleSession < ApplicationRecord
  belongs_to :course_module
  has_many :session_activities
end
