require "rails_helper"

RSpec.describe CourseLicense, type: :model do
  describe "relationship to school" do
    it "belongs to" do
      course_license = FactoryBot.create(:course_license)
    end
  end
end
