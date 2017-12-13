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
end
