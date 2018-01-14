require "rails_helper"

RSpec.describe HelpSectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/help_sections").to route_to("help_sections#index")
    end

    it "routes to #new" do
      expect(:get => "/help_sections/new").to route_to("help_sections#new")
    end

    it "routes to #show" do
      expect(:get => "/help_sections/1").to route_to("help_sections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/help_sections/1/edit").to route_to("help_sections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/help_sections").to route_to("help_sections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/help_sections/1").to route_to("help_sections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/help_sections/1").to route_to("help_sections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/help_sections/1").to route_to("help_sections#destroy", :id => "1")
    end

  end
end
