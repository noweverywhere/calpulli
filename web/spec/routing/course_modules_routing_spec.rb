require "rails_helper"

RSpec.describe CourseModulesController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/course_modules/1").to route_to("course_modules#show", id: "1")
    end
  end
end
