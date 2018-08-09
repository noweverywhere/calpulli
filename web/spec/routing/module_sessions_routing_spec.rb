require "rails_helper"

RSpec.describe ModuleSessionsController, type: :routing do
  describe "routing" do
    it "routes to #show" do
      expect(get: "/module_sessions/1").to route_to("module_sessions#show", id: "1")
    end
  end
end
