require 'rails_helper'
RSpec.describe CoursesController, type: :controller do
  login_instructor

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      course = Course.create! valid_attributes
      get :show, params: {id: course.to_param}, session: valid_session
      expect(response).to be_success
    end
  end
end
