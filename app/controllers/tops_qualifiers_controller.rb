class TopsQualifiersController < ApplicationController
  # GET /tops_qualifiers
  # GET /tops_qualifiers.json
  def index
    @tops_qualifiers = TopsQualifier.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tops_qualifiers }
    end
  end

  # GET /tops_qualifiers/1
  # GET /tops_qualifiers/1.json
  def show
    @tops_qualifier = TopsQualifier.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tops_qualifier }
    end
  end

  # GET /tops_qualifiers/new
  # GET /tops_qualifiers/new.json
  def new
    @tops_qualifier = TopsQualifier.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tops_qualifier }
    end
  end

  # GET /tops_qualifiers/1/edit
  def edit
    @tops_qualifier = TopsQualifier.find(params[:id])
  end

  # POST /tops_qualifiers
  # POST /tops_qualifiers.json
  def create
    @tops_qualifier = TopsQualifier.new(params[:tops_qualifier])

    respond_to do |format|
      if @tops_qualifier.save
        format.html { redirect_to @tops_qualifier, notice: 'Tops qualifier was successfully created.' }
        format.json { render json: @tops_qualifier, status: :created, location: @tops_qualifier }
      else
        format.html { render action: "new" }
        format.json { render json: @tops_qualifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tops_qualifiers/1
  # PUT /tops_qualifiers/1.json
  def update
    @tops_qualifier = TopsQualifier.find(params[:id])

    respond_to do |format|
      if @tops_qualifier.update_attributes(params[:tops_qualifier])
        format.html { redirect_to @tops_qualifier, notice: 'Tops qualifier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tops_qualifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tops_qualifiers/1
  # DELETE /tops_qualifiers/1.json
  def destroy
    @tops_qualifier = TopsQualifier.find(params[:id])
    @tops_qualifier.destroy

    respond_to do |format|
      format.html { redirect_to tops_qualifiers_url }
      format.json { head :no_content }
    end
  end
end
