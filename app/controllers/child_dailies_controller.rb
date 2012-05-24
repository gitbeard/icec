class ChildDailiesController < ApplicationController
  # GET /child_dailies
  # GET /child_dailies.json
  def index
    @child_dailies = ChildDaily.all
    @children = Child

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @child_dailies }
    end
  end

  def indexnames
    @child_dailies = ChildDaily.all
    @children = Child

    respond_to do |format|
      format.html # index_names.html.erb
      format.json { render json: @child_dailies }
    end
  end

  # GET /child_dailies/1
  # GET /child_dailies/1.json
  def show
    @child_daily = ChildDaily.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child_daily }
    end
  end

  # GET /child_dailies/new
  # GET /child_dailies/new.json
  def new
    @child_daily = ChildDaily.new(:tops_form => TopsForm.new)
    #@child_daily.tops_form.build.build_tops_question
    @child_daily.tops_form.tops_question

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_daily }
    end
  end

  # GET /child_dailies/1/edit
  def edit
    @child_daily = ChildDaily.find(params[:id])
  end

  # POST /child_dailies
  # POST /child_dailies.json
  def create
    @child_daily = ChildDaily.new(params[:child_daily])

    #if(@child_daily.id != nil)
  
      respond_to do |format|
        if @child_daily.save
          format.html { redirect_to @child_daily, notice: 'Child daily was successfully created.' }
          format.json { render json: @child_daily, status: :created, location: @child_daily }
        else
          format.html { render action: "new" }
          format.json { render json: @child_daily.errors, status: :unprocessable_entity }
        end
      end
    #end
  end

  # PUT /child_dailies/1
  # PUT /child_dailies/1.json
  def update
    @child_daily = ChildDaily.find(params[:id])
    #@child_daily.attributes = params[:tops_form]
    #@child_daily.tops_form.update_attributes(params[:id])
    respond_to do |format|
      if @child_daily.update_attributes(params[:child_daily])
        format.html { redirect_to @child_daily, notice: 'Child daily was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_daily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_dailies/1
  # DELETE /child_dailies/1.json
  def destroy
    @child_daily = ChildDaily.find(params[:id])
    @child_daily.destroy

    respond_to do |format|
      format.html { redirect_to child_dailies_url }
      format.json { head :no_content }
    end
  end

  # This is for taking daily attendance
  def take_attendance
    @children = Child.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end

  def roll_call
    params[:attendance].each do |i, values|
      c = ChildDaily.create(values)
    end
  end
  
  def tops_report
    @child_daily = ChildDaily.find(params[:id])
    @tops_forms = TopsForm.find(:all, @child_daily.child_id)
    #@questions = TopsQuestion.find(@tops_form.tops_question_id)
    #@child_dailies = ChildDailies.all
    #@child_daily = ChildDaily.find(@tops_form.child_daily_id)
    #@child = Child.find(@child_daily.child_id)
    #@questions = TopsQuestion.all
    #@qualifiers = TopsQualifier.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @children }
    end
  end


end
