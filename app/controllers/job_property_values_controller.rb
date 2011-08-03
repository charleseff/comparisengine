class JobPropertyValuesController < ApplicationController
  # GET /job_property_values
  # GET /job_property_values.json
  def index
    @job_property_values = JobPropertyValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @job_property_values }
    end
  end

  # GET /job_property_values/1
  # GET /job_property_values/1.json
  def show
    @job_property_value = JobPropertyValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job_property_value }
    end
  end

  # GET /job_property_values/new
  # GET /job_property_values/new.json
  def new
    @job_property_value = JobPropertyValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @job_property_value }
    end
  end

  # GET /job_property_values/1/edit
  def edit
    @job_property_value = JobPropertyValue.find(params[:id])
  end

  # POST /job_property_values
  # POST /job_property_values.json
  def create
    @job_property_value = JobPropertyValue.new(params[:job_property_value])

    respond_to do |format|
      if @job_property_value.save
        format.html { redirect_to @job_property_value, notice: 'Job property value was successfully created.' }
        format.json { render json: @job_property_value, status: :created, location: @job_property_value }
      else
        format.html { render action: "new" }
        format.json { render json: @job_property_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /job_property_values/1
  # PUT /job_property_values/1.json
  def update
    @job_property_value = JobPropertyValue.find(params[:id])

    respond_to do |format|
      if @job_property_value.update_attributes(params[:job_property_value])
        format.html { redirect_to @job_property_value, notice: 'Job property value was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @job_property_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_property_values/1
  # DELETE /job_property_values/1.json
  def destroy
    @job_property_value = JobPropertyValue.find(params[:id])
    @job_property_value.destroy

    respond_to do |format|
      format.html { redirect_to job_property_values_url }
      format.json { head :ok }
    end
  end
end
