require "rails_helper"

RSpec.describe VariationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/variations").to route_to("variations#index")
    end

    it "routes to #new" do
      expect(get: "/variations/new").to route_to("variations#new")
    end

    it "routes to #show" do
      expect(get: "/variations/1").to route_to("variations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/variations/1/edit").to route_to("variations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/variations").to route_to("variations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/variations/1").to route_to("variations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/variations/1").to route_to("variations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/variations/1").to route_to("variations#destroy", id: "1")
    end
  end
end
