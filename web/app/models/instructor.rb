class Instructor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :school_instructor
  has_one :school, through: :school_instructor
  has_many :course_licenses
  has_many :courses, through: :course_licenses
end
