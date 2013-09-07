class PhonesController < ApplicationController
  before_action :set_phone, only: [:show, :edit, :update, :destroy]

  # respond_to :html, :json

  # GET /phones
  # GET /phones.json
  def index
    @phones = Phone.all.includes(:images, :battery, :storage, :connectivity, :operating_system, :dimension, :display, :camera)

    respond_to do |format|
      format.html {}
      format.json { render json: @phones }
    end
    # render json: @phones
  end

  # GET /phones/1
  # GET /phones/1.json
  def show
    respond_to do |format|
      format.html {}
      format.json { render json: @phone }
    end
  end

  # GET /phones/new
  def new
    @phone = Phone.new
    4.times{@phone.images.build}
    @phone.build_battery
    @phone.build_storage
    @phone.build_connectivity
    @phone.build_operating_system
    @phone.build_dimension
    @phone.build_display
    @phone.build_camera

  end

  # GET /phones/1/edit
  def edit
    4.times{@phone.images.build} if @phone.images.blank?
    @phone.build_battery unless @phone.battery
    @phone.build_storage unless @phone.storage
    @phone.build_connectivity unless @phone.connectivity
    @phone.build_operating_system unless @phone.operating_system
    @phone.build_dimension unless @phone.dimension
    @phone.build_display unless @phone.display
    @phone.build_camera unless @phone.camera
  end

  # POST /phones
  # POST /phones.json
  def create
    @phone = Phone.new(phone_params)

    respond_to do |format|
      if @phone.save
        format.html { redirect_to @phone, notice: 'Phone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @phone }
      else
        format.html { render action: 'new' }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phones/1
  # PATCH/PUT /phones/1.json
  def update
    respond_to do |format|
      if @phone.update(phone_params)
        format.html { redirect_to @phone, notice: 'Phone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phones/1
  # DELETE /phones/1.json
  def destroy
    @phone.destroy
    respond_to do |format|
      format.html { redirect_to phones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone
      @phone = Phone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_params
      params.require(:phone).permit(:name, :description, images_attributes: [:image], battery_attributes: [:battery_type, :talk_time, :standby], storage_attributes: [:ram, :flash], connectivity_attributes: [:cell, :wifi, :bluetooth, :infrared, :gps], operating_system_attributes: [:os, :ui, :version], dimension_attributes: [:length, :breadth, :weigth], display_attributes: [:screen_size, :screen_resolution, :touch_screen], camera_attributes: [:front, :rear, :features])
    end
end
