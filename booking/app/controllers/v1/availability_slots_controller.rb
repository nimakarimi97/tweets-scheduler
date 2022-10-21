class V1::AvailabilitySlotsController < ApplicationController
  before_action :set_availability_slot, only: %i[ show edit update destroy ]

  # GET /availability_slots or /availability_slots.json
  def index
    @availability_slots = AvailabilitySlot.all
    respond_to do |format|
      format.json { render :json => @availability_slots }
      format.html { render :index}
    end
  end

  # GET /availability_slots/1 or /availability_slots/1.json
  def show
  end

  # GET /availability_slots/new
  def new
    @availability_slot = AvailabilitySlot.new
    @allEvents = Event.all
  end

  # GET /availability_slots/1/edit
  def edit
  end

  # POST /availability_slots or /availability_slots.json
  def create
    @availability_slot = AvailabilitySlot.new(availability_slot_params)

    respond_to do |format|
      if @availability_slot.save
        format.html { redirect_to availability_slot_url(@availability_slot), notice: "Availability slot was successfully created." }
        format.json { render :show, status: :created, location: @availability_slot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @availability_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /availability_slots/1 or /availability_slots/1.json
  def update
    respond_to do |format|
      if @availability_slot.update(availability_slot_params)
        format.html { redirect_to availability_slot_url(@availability_slot), notice: "Availability slot was successfully updated." }
        format.json { render :show, status: :ok, location: @availability_slot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @availability_slot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availability_slots/1 or /availability_slots/1.json
  def destroy
    @availability_slot.destroy

    respond_to do |format|
      format.html { redirect_to availability_slots_url, notice: "Availability slot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availability_slot
      @availability_slot = AvailabilitySlot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def availability_slot_params
      params.require(:availability_slot).permit(:start_at, :duration, :events_id)
    end
end
