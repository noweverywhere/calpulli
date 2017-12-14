require "rails_helper"

RSpec.describe "instructors", type: :model do
  describe "relationship to schools" do
    it "is valid without a school" do
      instructor = FactoryBot.create(:instructor)

      expect(instructor.school).to be_nil
    end

    it "can also belong to a school" do
      school = FactoryBot.create(:school)
      instructor = FactoryBot.create(:instructor, school: school)

      expect(instructor.school).to eql(school)
    end
  end

  describe "licensed_courses" do
    it "returns a list of courses instructor is licensed to access" do
      school = FactoryBot.create :school
      instructor = FactoryBot.create(:instructor, school: school)
      course_1 = FactoryBot.create :course
      course_2 = FactoryBot.create :course
      course_license_1 = FactoryBot.create(
        :course_license,
        course: course_1,
        school: school,
        instructor: instructor,
      )
      course_license_2 = FactoryBot.create(
        :course_license,
        course: course_2,
        school: school,
        instructor: instructor,
      )

      expect(instructor.courses).to include(course_1)
      expect(instructor.courses).to include(course_2)
      expect(instructor.courses.count).to equal(2)
    end
  end
end
