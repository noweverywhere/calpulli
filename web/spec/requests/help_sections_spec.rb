require "rails_helper"

RSpec.describe "HelpSections", type: :request do
  describe "GET /help_sections" do
    it "works! (now write some real specs)" do
      get help_sections_path
      expect(response).to have_http_status(200)
    end
  end
end
