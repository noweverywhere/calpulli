require "rails_helper"

RSpec.describe "Courses", type: :request do
  context "unathenticated" do
    it "redirects user to sign_in when unauthenticated" do
      get courses_path

      expect(response).to have_http_status(302)
      expect(response.location).to include()
    end
  end

  context "authenticated" do
    describe "index" do
      it "redirects to single course resource if instructor only has one" do
        course_license = FactoryBot.create(:course_license)
        sign_in course_license.instructor

        get courses_path

        expect(response).to have_http_status(302)
        expect(response.location).to include(course_path(course_license.course))
      end

      it "returns the list of courses the instructor is licensded for" do
        course_license = FactoryBot.create(:course_license)
        FactoryBot.create(
          :course_license,
          school: course_license.school,
          instructor: course_license.instructor
        )
        sign_in course_license.instructor

        get courses_path

        expect(response).to have_http_status(200)
      end
    end

    describe "with instructor signed in" do
      instructor = FactoryBot.create(:instructor)

      before do
        sign_in instructor
      end

      after do
        sign_out instructor
      end

      it "allows access to the course" do
        get courses_path

        expect(response).to have_http_status(200)
      end

      it "allows access to the course" do
        get courses_path

        expect(response).to have_http_status(200)
      end
    end
  end
end
