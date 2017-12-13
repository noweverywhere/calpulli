require 'rails_helper'

RSpec.describe Course, type: :model do
  describe "relationship to course_license" do
    it "belongs to many" do
      course = FactoryBot.create(:course)
      course_license1 = FactoryBot.create(
        :course_license,
        course: course,
      )
      course_license2 = FactoryBot.create(
        :course_license,
        course: course,
      )
    end
  end
end
