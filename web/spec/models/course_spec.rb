require "rails_helper"

RSpec.describe Course, type: :model do
  describe "properties" do
    it "raises error when 'year' is not in the list of allowed values" do
      expect do
        FactoryBot.create(:course, year: "k4")
      end.to raise_error(ActiveRecord::RecordInvalid)
      expect do
        FactoryBot.create(:course, year: "p7")
      end.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "does not raise error when 'year' is in the list of allowed values" do
      expect do
        FactoryBot.create(:course, year: "k1")
        FactoryBot.create(:course, year: "p6")
      end.to_not raise_error
    end
  end

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
