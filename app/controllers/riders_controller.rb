class RidersController < ApplicationController
  load_and_authorize_resource
  helper :all

  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rider }
    end
  end

    # GET /riders
  # GET /riders.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @riders }
    end
  end

  def list
    @title = "Team"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @riders }
    end
  end

  # GET /riders/1
  # GET /riders/1.json
  def show
    @title = @rider.name
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rider }
    end
  end

  # GET /riders/1/edit
  def edit
  end

  # RIDER /riders
  # RIDER /riders.json
  def create
    respond_to do |format|
      if @rider.save
        format.html { redirect_to riders_url, notice: 'Rider was successfully created.' }
        format.json { render json: @rider, status: :created, location: @rider }
      else
        format.html { render action: "new" }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /riders/1
  # PUT /riders/1.json
  def update
    respond_to do |format|
      if @rider.update_attributes(params[:rider])
        format.html { redirect_to riders_url, notice: 'Rider was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /riders/1
  # DELETE /riders/1.json
  def destroy
    @rider.destroy

    respond_to do |format|
      format.html { redirect_to riders_url }
      format.json { head :ok }
    end
  end
end
