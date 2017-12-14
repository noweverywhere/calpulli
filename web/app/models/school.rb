class School < ApplicationRecord
  has_many :course_licenses
  has_many :school_instructors
  has_many :instructors, through: :school_instructors
  has_many :courses, through: :course_licenses
end
