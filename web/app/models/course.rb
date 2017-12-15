class Course < ApplicationRecord
  YEARS_COVERED_IN_CURRICULUM = %w(k1 k2 k3 p1 p2 p3 p4 p5 p6)

  has_and_belongs_to_many :course_licenses
  has_many :instructors, through: :course_licenses

  validates :year, inclusion: { in: YEARS_COVERED_IN_CURRICULUM }

end
