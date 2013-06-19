require 'spec_helper'


describe Trip do

  def valid_trip_attributes
    {:title => 'some title',
     :body => 'some body',
    :user_id => 1}
  end

  def valid_question_attributes
    {:title => 'some question',
     :body => 'some body'}
  end

  before(:each) do
    @trip = nil
  end
  specify "should be invalid without a title" do
    @trip = Trip.create valid_trip_attributes.except(:title)
    @trip.should_not be_valid
    @trip.errors_on(:title).should eq ["is required"]
    @trip.title = 'some title'
    @trip.should be_valid
    @trip.valid?
  end

  specify "should be invalid without a body" do
    @trip = Trip.create valid_trip_attributes.except(:body)

    @trip.should_not be_valid
    @trip.errors_on(:body).should eq ["is required"]
    @trip.body = 'some body'
    @trip.should be_valid
  end

  specify "should be invalid without a user" do
      @trip = Trip.create valid_trip_attributes.except(:user_id)

      @trip.should_not be_valid
      @trip.errors_on(:user_id).should eq ["is required"]
      @trip.user_id = 1
      @trip.should be_valid
    end

  specify "should be private by default" do
    @trip = Trip.create valid_trip_attributes

    @trip.should_not be_public
    @trip.public.should_not be_nil
    @trip.public.should be_false


  end

  specify "should be able to have a question" do
    @trip = Trip.create valid_trip_attributes
    question = @trip.questions.create! valid_question_attributes
    @trip.questions.count.should eq(1)
    question.should eq @trip.questions.first

  end

  specify "should have a user" do
    trip = FactoryGirl.create(:trip)
    trip.user_id = trip.user.id
    trip.save
    trip.user.should be_a User
    trip.user_id.should eq trip.user.id
  end

end
