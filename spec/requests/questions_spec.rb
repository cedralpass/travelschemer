require 'spec_helper'

def setup_trip
     trip = FactoryGirl.create(:trip)
     trip.save
     return trip
   end

   def valid_trip_attributes
     {"title" => "Some trip", "body" => "Some Body"}
   end

describe "Questions" do
  before(:each) do
         @trip = setup_trip
      end
  describe "GET /trips/1/questions" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get trip_questions_path(@trip)
      response.status.should be(200)
    end
  end
end
