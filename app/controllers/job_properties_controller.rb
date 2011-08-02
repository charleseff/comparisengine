class JobPropertiesController < ApplicationController
  # GET /job_properties
  # GET /job_properties.json
  def index
    @job_properties = JobProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_properties }
    end
  end

  # GET /job_properties/1
  # GET /job_properties/1.json
  def show
    @job_property = JobProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_property }
    end
  end

  # GET /job_properties/new
  # GET /job_properties/new.json
  def new
    @job_property = JobProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_property }
    end
  end

  # GET /job_properties/1/edit
  def edit
    @job_property = JobProperty.find(params[:id])
  end

  # POST /job_properties
  # POST /job_properties.json
  def create
    @job_property = JobProperty.new(params[:job_property])

    respond_to do |format|
      if @job_property.save
        format.html { redirect_to @job_property, notice: 'Job property was successfully created.' }
        format.json { render json: @job_property, status: :created, location: @job_property }
      else
        format.html { render action: "new" }
        format.json { render json: @job_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_properties/1
  # PUT /job_properties/1.json
  def update
    @job_property = JobProperty.find(params[:id])

    respond_to do |format|
      if @job_property.update_attributes(params[:job_property])
        format.html { redirect_to @job_property, notice: 'Job property was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_properties/1
  # DELETE /job_properties/1.json
  def destroy
    @job_property = JobProperty.find(params[:id])
    @job_property.destroy

    respond_to do |format|
      format.html { redirect_to job_properties_url }
      format.json { head :ok }
    end
  end
end
