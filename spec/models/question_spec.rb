require 'spec_helper'


def valid_question_attributes
  {:title => 'some title',
   :body => 'some body'}
end

describe Question do

  specify "should be invalid without a title" do
    @question = Question.create valid_question_attributes.except(:title)
    @question.should_not be_valid
    @question.errors_on(:title).should eq ["is required"]
    @question.title = 'some title'
    @question.should be_valid
    @question.valid?
  end

  specify "should be invalid without a body" do
    @question = Question.create valid_question_attributes.except(:body)
    @question.should_not be_valid
    @question.errors_on(:body).should eq ["is required"]
    @question.body = 'some body'
    @question.should be_valid
    @question.valid?
  end

  specify "should have a user" do
      @question = Question.create valid_question_attributes.except(:body)
      @question.should_not be_valid
      @question.errors_on(:body).should eq ["is required"]
      @question.body = 'some body'
      @question.should be_valid
      @question.valid?
    end



end
