class RidersController < ApplicationController
    skip_before_filter :authorize, :only => [:show, :list]

  def new
    @rider = Rider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rider }
    end
  end

    # GET /riders
  # GET /riders.json
  def index
    @riders = Rider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @riders }
    end
  end

  def list
    @riders = Rider.all
    @title = "News"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @riders }
    end
  end

  # GET /riders/1
  # GET /riders/1.json
  def show
    @rider = Rider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rider }
    end
  end

  # GET /riders/1/edit
  def edit
    @rider = Rider.find(params[:id])
  end

  # RIDER /riders
  # RIDER /riders.json
  def create
    @rider = Rider.new(params[:rider])

    respond_to do |format|
      if @rider.save
        format.html { redirect_to @rider, notice: 'Rider was successfully created.' }
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
    @rider = Rider.find(params[:id])

    respond_to do |format|
      if @rider.update_attributes(params[:rider])
        format.html { redirect_to @rider, notice: 'Rider was successfully updated.' }
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
    @rider = Rider.find(params[:id])
    @rider.destroy

    respond_to do |format|
      format.html { redirect_to riders_url }
      format.json { head :ok }
    end
  end
end
