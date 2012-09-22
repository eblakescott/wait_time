class FieldMuseumTimesController < ApplicationController
  # GET /field_museum_times
  # GET /field_museum_times.json
  def index
    @field_museum_times = FieldMuseumTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @field_museum_times }
    end
  end

  # GET /field_museum_times/1
  # GET /field_museum_times/1.json
  def show
    @field_museum_time = FieldMuseumTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @field_museum_time }
    end
  end

  # GET /field_museum_times/new
  # GET /field_museum_times/new.json
  def new
    @field_museum_time = FieldMuseumTime.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @field_museum_time }
    end
  end

  # GET /field_museum_times/1/edit
  def edit
    @field_museum_time = FieldMuseumTime.find(params[:id])
  end

  # POST /field_museum_times
  # POST /field_museum_times.json
  def create
    @field_museum_time = FieldMuseumTime.new(params[:field_museum_time])

    respond_to do |format|
      if @field_museum_time.save
        format.html { redirect_to @field_museum_time, notice: 'Field museum time was successfully created.' }
        format.json { render json: @field_museum_time, status: :created, location: @field_museum_time }
      else
        format.html { render action: "new" }
        format.json { render json: @field_museum_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /field_museum_times/1
  # PUT /field_museum_times/1.json
  def update
    @field_museum_time = FieldMuseumTime.find(params[:id])

    respond_to do |format|
      if @field_museum_time.update_attributes(params[:field_museum_time])
        format.html { redirect_to @field_museum_time, notice: 'Field museum time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @field_museum_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_museum_times/1
  # DELETE /field_museum_times/1.json
  def destroy
    @field_museum_time = FieldMuseumTime.find(params[:id])
    @field_museum_time.destroy

    respond_to do |format|
      format.html { redirect_to field_museum_times_url }
      format.json { head :no_content }
    end
  end
end
