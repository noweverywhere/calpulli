require "rails_helper"

RSpec.describe School, type: :model do
  describe "relationship to instructors" do
    it "a school can have many instructors" do
      school = FactoryBot.create :school
      instructor1 = FactoryBot.create(:instructor, school: school)
      instructor2 = FactoryBot.create(:instructor, school: school)

      expect(school.instructors.count).to eql(2)
      expect(school.instructors).to include(instructor1)
      expect(school.instructors).to include(instructor2)
    end
  end

  describe "relationship to course_licenses" do
    it "a school can have many course_licenses" do
      school = FactoryBot.create :school
      course_license1 = FactoryBot.create(
        :course_license, school: school
      )
      course_license2 = FactoryBot.create(
        :course_license, school: school
      )

      expect(school.course_licenses.count).to eql(2)
    end
  end
end
