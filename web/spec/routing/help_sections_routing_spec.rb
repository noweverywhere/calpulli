require "rails_helper"

RSpec.describe HelpSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/help").to route_to("help_sections#index")
    end

    it "routes to #show" do
      expect(get: "/help/1").to route_to("help_sections#show", id: "1")
    end
  end
end
