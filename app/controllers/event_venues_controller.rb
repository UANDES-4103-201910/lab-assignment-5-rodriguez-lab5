class EventVenuesController < ApplicationController
  before_action :set_event_venue, only: [:show, :edit, :update, :destroy]

  def create
    @event_venue = EventVenue.new(event_venue_params)
    if @event_venue.save
      render json:{message: 'Success Creating'}
    else
      render json:{message: 'Failure Creating'}
    end
  end

  def update
      if @event_venue.update(event_venue_params)
        render json:{message: 'Success Updating'}
      else
        render json:{message: 'Failure Updating'}
      end
  end


  def destroy
    if @event_venue.destroy
      render json:{message: 'Success Destroying'}
    else
      render json:{message: 'Failure Destroying'}  
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
