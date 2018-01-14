require 'rails_helper'

RSpec.describe "Courses", type: :request do
  describe "GET /courses" do
    it "redirects user to sign_in when unauthenticated" do
      get courses_path
      expect(response).to have_http_status(302)
      expect(response.location).to include("sign_in")
    end

		describe "with instructor signed in" do
				instructor = FactoryBot.create(:instructor, password: "There is no spoon")
				sign_in instructor
			it "redirects user to sign_in when authenticated" do
				postbody = {:instructor => { :email => instructor.email, :password => "There is no spoon" }}
				require "pry"; binding.pry
				get courses_path
				expect(response).to have_http_status(302)
				expect(response.location).to include("sign_in")
			end
		end
  end
end
