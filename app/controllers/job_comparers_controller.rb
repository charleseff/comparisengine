class JobComparersController < ApplicationController
  # GET /job_comparers
  # GET /job_comparers.xml
  def index
    @job_comparers = JobComparer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_comparers }
    end
  end

  # GET /job_comparers/1
  # GET /job_comparers/1.xml
  def show
    @job_comparer = JobComparer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_comparer }
    end
  end

  # GET /job_comparers/new
  # GET /job_comparers/new.xml
  def new
    @job_comparer = JobComparer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_comparer }
    end
  end

  # GET /job_comparers/1/edit
  def edit
    @job_comparer = JobComparer.find(params[:id])
  end

  # POST /job_comparers
  # POST /job_comparers.xml
  def create
    @job_comparer = JobComparer.new(params[:job_comparer])

    respond_to do |format|
      if @job_comparer.save
        format.html { redirect_to(@job_comparer, :notice => 'Job comparer was successfully created.') }
        format.xml  { render :xml => @job_comparer, :status => :created, :location => @job_comparer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_comparer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_comparers/1
  # PUT /job_comparers/1.xml
  def update
    @job_comparer = JobComparer.find(params[:id])

    respond_to do |format|
      if @job_comparer.update_attributes(params[:job_comparer])
        format.html { redirect_to(@job_comparer, :notice => 'Job comparer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_comparer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_comparers/1
  # DELETE /job_comparers/1.xml
  def destroy
    @job_comparer = JobComparer.find(params[:id])
    @job_comparer.destroy

    respond_to do |format|
      format.html { redirect_to(job_comparers_url) }
      format.xml  { head :ok }
    end
  end
end
