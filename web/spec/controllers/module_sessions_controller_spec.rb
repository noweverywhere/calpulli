require 'rails_helper'

RSpec.describe ModuleSessionsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ModuleSession. As you add validations to ModuleSession, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the
  # module_session in order to pass any filters (e.g. authentication) defined
  # in SessionsController. Be sure to keep this updated too.
  let(:valid_module_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      module_session = ModuleSession.create! valid_attributes
      get :index, params: {}, module_session: valid_module_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      module_session = ModuleSession.create! valid_attributes
      get :show, params: {id: module_session.to_param}, module_session: valid_session
      expect(response).to be_success
    end
  end
end
