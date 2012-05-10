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
    @child_daily = ChildDaily.new

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

    if(@child_daily.id != nil)
    
    

      respond_to do |format|
        if @child_daily.save
          format.html { redirect_to @child_daily, notice: 'Child daily was successfully created.' }
          format.json { render json: @child_daily, status: :created, location: @child_daily }
        else
          format.html { render action: "new" }
          format.json { render json: @child_daily.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /child_dailies/1
  # PUT /child_dailies/1.json
  def update
    @child_daily = ChildDaily.find(params[:id])

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



end
