class CourseLicense < ApplicationRecord
  belongs_to :course
  belongs_to :instructor
  belongs_to :school
end
