class AnswersController < ApplicationController
  # GET /answers
  # GET /answers.json
  def index

    @trip = Trip.find(params[:trip_id])
    @question = @trip.questions.where("id = ?", params[:question_id]).first
    @answers = @question.answers.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @question = Question.find(params[:question_id])
    @trip = Trip.find(@question.trip_id)
    @answer = Answer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/new
  # GET /answers/new.json
  def new
    @question = Question.find(params[:question_id])
    @trip = Trip.find(@question.trip_id)
    @answer = @question.answers.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /answers/1/edit
  def edit
    @question = Question.find(params[:question_id])
    @trip = Trip.find(@question.trip_id)
    @answer = Answer.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @question = Question.find(params[:question_id])
    @trip = Trip.find(@question.trip_id)
    @answer = @question.answers.new(params[:answer])

    respond_to do |format|
      if @answer.save
        format.html { redirect_to trip_question_url(@trip, @question), notice: 'Answer was successfully created.' }
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /answers/1
  # PUT /answers/1.json
  def update
    @question = Question.find(params[:question_id])
    @trip = Trip.find(@question.trip_id)
    @answer = Answer.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to trip_question_url(@trip, @question), notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @question = Question.find(params[:question_id])
    @trip = Trip.find(@question.trip_id)
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to trip_question_url(@trip, @question) }
      format.json { head :no_content }
    end
  end
end
