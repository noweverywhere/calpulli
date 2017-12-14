class SchoolInstructor < ApplicationRecord
  belongs_to :school
  belongs_to :instructor
end
