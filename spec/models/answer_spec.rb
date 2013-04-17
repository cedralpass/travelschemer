require 'spec_helper'
def valid_answer_attributes
  {:body => 'some body'}
end

describe Answer do
  specify "should have a body" do
    @trip = FactoryGirl.build(:trip)
    @trip.save
    @question =  @trip.questions.create({:title=>"a question", :body=>"a body"})
    @answer =  @question.answers.create
    @answer.should_not be_valid
    @answer.body = "test"
    @answer.should be_valid
  end
end
