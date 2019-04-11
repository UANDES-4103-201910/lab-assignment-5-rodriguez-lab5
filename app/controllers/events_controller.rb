class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def create
    @event = Event.new(event_params)
    if @event.save
      render json:{message: 'Success Creating'}
    else
      render json:{message: 'Failure Creating'}
    end
  end

  def update
      if @event.update(event_params)
        render json:{message: 'Success Updating'}
      else
        render json:{message: 'Failure Updating'}
      end
  end


  def destroy
    if @event.destroy
      render json:{message: 'Success Destroying'}
    else
      render json:{message: 'Failure Destroying'}  
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.fetch(:event, {})
    end
end
