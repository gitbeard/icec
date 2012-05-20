class TopsFormsController < ApplicationController
  # GET /tops_forms
  # GET /tops_forms.json
  def index
    @tops_forms = TopsForm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tops_forms }
    end
  end

  # GET /tops_forms/1
  # GET /tops_forms/1.json
  def show
    @tops_form = TopsForm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tops_form }
    end
  end

  # GET /tops_forms/new
  # GET /tops_forms/new.json
  def new
    @tops_form = TopsForm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tops_form }
    end
  end

  # GET /tops_forms/1/edit
  def edit
    @tops_form = TopsForm.find(params[:id])
  end

  # POST /tops_forms
  # POST /tops_forms.json
  def create
    @tops_form = TopsForm.new(params[:tops_form])

    respond_to do |format|
      if @tops_form.save
        format.html { redirect_to @tops_form, notice: 'Tops form was successfully created.' }
        format.json { render json: @tops_form, status: :created, location: @tops_form }
      else
        format.html { render action: "new" }
        format.json { render json: @tops_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tops_forms/1
  # PUT /tops_forms/1.json
  def update
    @tops_form = TopsForm.find(params[:id])

    respond_to do |format|
      if @tops_form.update_attributes(params[:tops_form])
        format.html { redirect_to @tops_form, notice: 'Tops form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tops_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tops_forms/1
  # DELETE /tops_forms/1.json
  def destroy
    @tops_form = TopsForm.find(params[:id])
    @tops_form.destroy

    respond_to do |format|
      format.html { redirect_to tops_forms_url }
      format.json { head :no_content }
    end
  end
  
  def tops_form
    @tops_form = TopsForm.find(params[:id])
    #@questions = TopsQuestion.find(@tops_form.tops_question_id)
    #@child_dailies = ChildDailies.all
    @child_daily = ChildDaily.find(@tops_form.child_daily_id)
    @child = Child.find(@child_daily.child_id)
    @questions = TopsQuestion.all
    @qualifiers = TopsQualifier.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end
  
  def tops_form2
    @tops_form = TopsForm.find(params[:id])
    #@questions = TopsQuestion.find(@tops_form.tops_question_id)
    #@child_dailies = ChildDailies.all
    @child_daily = ChildDaily.find(@tops_form.child_daily_id)
    @child = Child.find(@child_daily.child_id)
    @questions = TopsQuestion.all
    @qualifiers = TopsQualifier.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end
  
  
end
