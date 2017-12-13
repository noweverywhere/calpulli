class School < ApplicationRecord
  has_many :course_licenses
  has_many :instructors
  has_many :courses, through: :course_licenses
end
