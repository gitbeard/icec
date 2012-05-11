class EmailMessagesController < ApplicationController
  # GET /email_messages
  # GET /email_messages.json
  def index
    @email_messages = EmailMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @email_messages }
    end
  end

  # GET /email_messages/1
  # GET /email_messages/1.json
  def show
    @email_message = EmailMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email_message }
    end
  end

  # GET /email_messages/new
  # GET /email_messages/new.json
  def new
    @email_message = EmailMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email_message }
    end
  end

  # GET /email_messages/1/edit
  def edit
    @email_message = EmailMessage.find(params[:id])
  end

  # POST /email_messages
  # POST /email_messages.json
  def create
    @email_message = EmailMessage.new(params[:email_message])

    respond_to do |format|
      if @email_message.save
        format.html { redirect_to @email_message, notice: 'Email message was successfully created.' }
        format.json { render json: @email_message, status: :created, location: @email_message }
      else
        format.html { render action: "new" }
        format.json { render json: @email_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /email_messages/1
  # PUT /email_messages/1.json
  def update
    @email_message = EmailMessage.find(params[:id])

    respond_to do |format|
      if @email_message.update_attributes(params[:email_message])
        format.html { redirect_to @email_message, notice: 'Email message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @email_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_messages/1
  # DELETE /email_messages/1.json
  def destroy
    @email_message = EmailMessage.find(params[:id])
    @email_message.destroy

    respond_to do |format|
      format.html { redirect_to email_messages_url }
      format.json { head :no_content }
    end
  end

  # GET /preview_email/1
  # GET /preview_email/1.json
  def preview_email
    @email_message = EmailMessage.find(params[:id])
    @child = Child.find(@email_message.child_id)
    @child_daily = ChildDaily.find(@email_message.child_daily_id)
    @daily_note = DailyNote.find(@email_message.daily_note_id)
    

    respond_to do |format|
      format.html # preview_email.html.erb
      format.json { render json: @email_message }
    end
  end


  # Generate emails
  def generate_emails
    email_parts = Hash.new()
    email_parts["child_id"] = 2
    UserMailer.child_daily_email(email_parts).deliver
    emails = Hash.new()
    i = 0
    @child_daily = ChildDaily.where("date>?", Date.yesterday)
    @daily_notes = DailyNote.where("date>?", Date.yesterday)
    @child_daily.each do |daily|
      emails[i]["child_id"] = {"child_id" => daily.child_id}
      emails[i]["child_daily_id"] = {"child_daily_id" => daily.id}
      @daily_notes.each do |daily_note|
        emails[i]["daily_note_id"] = {"daily_note_id" => daily_note.id}
      end
      i = i + 1
    end

    emails.each do |i, values|
      c = EmailMessage.create(values)
    end
  end

end
