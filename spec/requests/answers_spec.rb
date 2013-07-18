require 'spec_helper'

describe "Answers" do

  def valid_attributes
      {"body" => "MyText"}
    end

    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # AnswersController. Be sure to keep this updated too.
    def valid_session
      {}
    end
    def assign_resources
      {:trip_id => @trip.id, :question_id => @question.id}
    end

    def setup_saved_answer
      @answer = @question.answers.create(valid_attributes)
      @answer.question_id = @question.id
      @answer.save
    end

  before :each do
    @question = FactoryGirl.create(:question)
    @trip = @question.trip

    ##todo: bug in question factory, have to assign trip_id to question
   @question.trip_id = @trip.id
    @question.save
  end

  describe "GET /trip/1/questions/1/answers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      setup_saved_answer
      get trip_question_answers_path(assign_resources.merge({:id=>@answer.id}))
      response.status.should be(200)
    end
  end
end
