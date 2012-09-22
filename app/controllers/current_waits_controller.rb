class CurrentWaitsController < ApplicationController
  # GET /current_waits
  # GET /current_waits.json
  def index
    @current_waits = CurrentWait.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_waits }
    end
  end

  # GET /current_waits/1
  # GET /current_waits/1.json
  def show
    @current_wait = present_wait
    location = Location.find(params[:location_id])
    @current_wait = @wait.current_waits.build
    @current_wait.location = location

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_wait }
    end
  end
  # GET /current_waits/new
  # GET /current_waits/new.json
  def new
    @current_wait = CurrentWait.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_wait }
    end
  end

  # GET /current_waits/1/edit
  def edit
    @current_wait = CurrentWait.find(params[:id])
  end

  # POST /current_waits
  # POST /current_waits.json
  def create
  @current_wait = CurrentWait.new(params[:current_wait])

    respond_to do |format|
      if @current_wait.save
        format.html { redirect_to @current_wait, notice: 'Current Wait was successfully created.' }
        format.json { render json: @current_wait, status: :created, current_wait: @current_wait }
      else
        format.html { render action: "new" }
        format.json { render json: @current_wait.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PUT /current_waits/1
  # PUT /current_waits/1.json
  def update
    @current_wait = CurrentWait.find(params[:id])

    respond_to do |format|
      if @current_wait.update_attributes(params[:current_wait])
        format.html { redirect_to @current_wait, notice: 'Current wait was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_wait.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_waits/1
  # DELETE /current_waits/1.json
  def destroy
    @current_wait = CurrentWait.find(params[:id])
    @current_wait.destroy

    respond_to do |format|
      format.html { redirect_to current_waits_url }
      format.json { head :no_content }
    end
  end
end
