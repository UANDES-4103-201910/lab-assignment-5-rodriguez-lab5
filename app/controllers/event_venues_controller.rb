class EventVenuesController < ApplicationController
  before_action :set_event_venue, only: [:show, :edit, :update, :destroy]

  def create
    @event_venue = EventVenue.new(event_venue_params)

    respond_to do |format|
      if @event_venue.save
        format.html { redirect_to @event_venue, notice: 'Event venue was successfully created.' }
        format.json { render :show, status: :created, location: @event_venue }
      else
        format.html { render :new }
        format.json { render json: @event_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event_venue.update(event_venue_params)
        format.html { redirect_to @event_venue, notice: 'Event venue was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_venue }
      else
        format.html { render :edit }
        format.json { render json: @event_venue.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event_venue.destroy
    respond_to do |format|
      format.html { redirect_to event_venues_url, notice: 'Event venue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_venue
      @event_venue = EventVenue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_venue_params
      params.fetch(:event_venue, {})
    end
end
