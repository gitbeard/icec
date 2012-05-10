class DailyNotesController < ApplicationController
  # GET /daily_notes
  # GET /daily_notes.json
  def index
    @daily_notes = DailyNote.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daily_notes }
    end
  end

  # GET /daily_notes/1
  # GET /daily_notes/1.json
  def show
    @daily_note = DailyNote.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daily_note }
    end
  end

  # GET /daily_notes/new
  # GET /daily_notes/new.json
  def new
    @daily_note = DailyNote.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daily_note }
    end
  end

  # GET /daily_notes/1/edit
  def edit
    @daily_note = DailyNote.find(params[:id])
  end

  # POST /daily_notes
  # POST /daily_notes.json
  def create
    @daily_note = DailyNote.new(params[:daily_note])

    respond_to do |format|
      if @daily_note.save
        format.html { redirect_to @daily_note, notice: 'Daily note was successfully created.' }
        format.json { render json: @daily_note, status: :created, location: @daily_note }
      else
        format.html { render action: "new" }
        format.json { render json: @daily_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daily_notes/1
  # PUT /daily_notes/1.json
  def update
    @daily_note = DailyNote.find(params[:id])

    respond_to do |format|
      if @daily_note.update_attributes(params[:daily_note])
        format.html { redirect_to @daily_note, notice: 'Daily note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daily_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_notes/1
  # DELETE /daily_notes/1.json
  def destroy
    @daily_note = DailyNote.find(params[:id])
    @daily_note.destroy

    respond_to do |format|
      format.html { redirect_to daily_notes_url }
      format.json { head :no_content }
    end
  end
end
