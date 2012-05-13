class TopsQuestionsController < ApplicationController
  # GET /tops_questions
  # GET /tops_questions.json
  def index
    @tops_questions = TopsQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tops_questions }
    end
  end

  # GET /tops_questions/1
  # GET /tops_questions/1.json
  def show
    @tops_question = TopsQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tops_question }
    end
  end

  # GET /tops_questions/new
  # GET /tops_questions/new.json
  def new
    @tops_question = TopsQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tops_question }
    end
  end

  # GET /tops_questions/1/edit
  def edit
    @tops_question = TopsQuestion.find(params[:id])
  end

  # POST /tops_questions
  # POST /tops_questions.json
  def create
    @tops_question = TopsQuestion.new(params[:tops_question])

    respond_to do |format|
      if @tops_question.save
        format.html { redirect_to @tops_question, notice: 'Tops question was successfully created.' }
        format.json { render json: @tops_question, status: :created, location: @tops_question }
      else
        format.html { render action: "new" }
        format.json { render json: @tops_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tops_questions/1
  # PUT /tops_questions/1.json
  def update
    @tops_question = TopsQuestion.find(params[:id])

    respond_to do |format|
      if @tops_question.update_attributes(params[:tops_question])
        format.html { redirect_to @tops_question, notice: 'Tops question was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tops_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tops_questions/1
  # DELETE /tops_questions/1.json
  def destroy
    @tops_question = TopsQuestion.find(params[:id])
    @tops_question.destroy

    respond_to do |format|
      format.html { redirect_to tops_questions_url }
      format.json { head :no_content }
    end
  end
end
