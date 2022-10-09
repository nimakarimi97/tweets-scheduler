require "rails_helper"

RSpec.describe AvailabilitySlotsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/availability_slots").to route_to("availability_slots#index")
    end

    it "routes to #new" do
      expect(get: "/availability_slots/new").to route_to("availability_slots#new")
    end

    it "routes to #show" do
      expect(get: "/availability_slots/1").to route_to("availability_slots#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/availability_slots/1/edit").to route_to("availability_slots#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/availability_slots").to route_to("availability_slots#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/availability_slots/1").to route_to("availability_slots#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/availability_slots/1").to route_to("availability_slots#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/availability_slots/1").to route_to("availability_slots#destroy", id: "1")
    end
  end
end
