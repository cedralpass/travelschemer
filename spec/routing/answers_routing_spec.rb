require "spec_helper"

describe AnswersController do

  describe "routing" do

    it "routes to #index" do
      get("/trips/1/questions/1/answers").should route_to("answers#index",   :trip_id => "1", :question_id=>"1")
    end

    it "routes to #new" do
      get("/trips/1/questions/1/answers/new").should route_to("answers#new",   :trip_id => "1", :question_id=>"1")
    end

    it "routes to #show" do
      get("/trips/1/questions/1/answers/1").should route_to("answers#show",   :trip_id => "1", :question_id=>"1", :id => "1")
    end

    it "routes to #edit" do
      get("/trips/1/questions/1/answers/1/edit").should route_to("answers#edit",   :trip_id => "1", :question_id=>"1", :id => "1")
    end

    it "routes to #create" do
      post("/trips/1/questions/1/answers").should route_to("answers#create",   :trip_id => "1", :question_id=>"1")
    end

    it "routes to #update" do
      put("/trips/1/questions/1/answers/1").should route_to("answers#update",   :trip_id => "1", :question_id=>"1", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trips/1/questions/1/answers/1").should route_to("answers#destroy",   :trip_id => "1", :question_id=>"1", :id => "1")
    end

  end
end
