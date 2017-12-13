class Course < ApplicationRecord
  has_and_belongs_to_many :course_licenses
  has_many :instructors, through: :course_licenses
end
