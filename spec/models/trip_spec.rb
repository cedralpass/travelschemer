require 'spec_helper'

def valid_user_attributes
  {:title => 'some title',
   :body => 'some body'}
end

describe Trip do

  setup do
    @trip = Trip.new
  end
  specify "should be invalid without a title" do
    @trip = Trip.create valid_user_attributes.except(:title)
    @trip.should_not be_valid
    @trip.errors_on(:title).should eq ["is required"]
    @trip.title = 'some title'
    @trip.should be_valid
    @trip.valid?
  end

  specify "should be invalid without a body" do
    @trip = Trip.create valid_user_attributes.except(:body)

    @trip.should_not be_valid
    @trip.errors_on(:body).should eq ["is required"]
    @trip.body = 'some body'
    @trip.should be_valid
    @trip.valid?
  end

  specify "should be private by default" do
      @trip = Trip.create valid_user_attributes

      @trip.should_not be_public
      @trip.public.should_not be_nil
      @trip.public.should be_false


    end

end
