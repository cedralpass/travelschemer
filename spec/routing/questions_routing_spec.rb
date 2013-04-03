require "spec_helper"

describe QuestionsController do
  describe "routing" do

    it "routes to #index" do
      get("/trips/1/questions").should route_to("questions#index", :trip_id => "1")
    end

    it "routes to #new" do
      get("/trips/1/questions/new").should route_to("questions#new", :trip_id => "1")
    end

    it "routes to #show" do
      get("/trips/1/questions/1").should route_to("questions#show", :id => "1", :trip_id => "1")
    end

    it "routes to #edit" do
      get("/trips/1/questions/1/edit").should route_to("questions#edit", :id => "1", :trip_id => "1")
    end

    it "routes to #create" do
      post("/trips/1/questions").should route_to("questions#create", :trip_id => "1")
    end

    it "routes to #update" do
      put("/trips/1/questions/1").should route_to("questions#update", :id => "1", :trip_id => "1")
    end

    it "routes to #destroy" do
      delete("/trips/1/questions/1").should route_to("questions#destroy", :id => "1", :trip_id => "1")
    end

  end
end
