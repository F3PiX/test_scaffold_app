class ControllerThingsController < ApplicationController
  before_action :set_controller_thing, only: [:show, :edit, :update, :destroy]

  # GET /controller_things
  # GET /controller_things.json
  def index
    @controller_things = ControllerThing.all
  end

  # GET /controller_things/1
  # GET /controller_things/1.json
  def show
  end

  # GET /controller_things/new
  def new
    @controller_thing = ControllerThing.new
  end

  # GET /controller_things/1/edit
  def edit
  end

  # POST /controller_things
  # POST /controller_things.json
  def create
    @controller_thing = ControllerThing.new(controller_thing_params)

    respond_to do |format|
      if @controller_thing.save
        format.html { redirect_to @controller_thing, notice: 'Controller thing was successfully created.' }
        format.json { render :show, status: :created, location: @controller_thing }
      else
        format.html { render :new }
        format.json { render json: @controller_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /controller_things/1
  # PATCH/PUT /controller_things/1.json
  def update
    respond_to do |format|
      if @controller_thing.update(controller_thing_params)
        format.html { redirect_to @controller_thing, notice: 'Controller thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @controller_thing }
      else
        format.html { render :edit }
        format.json { render json: @controller_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /controller_things/1
  # DELETE /controller_things/1.json
  def destroy
    @controller_thing.destroy
    respond_to do |format|
      format.html { redirect_to controller_things_url, notice: 'Controller thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_controller_thing
      @controller_thing = ControllerThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def controller_thing_params
      params.fetch(:controller_thing, {})
    end
end
