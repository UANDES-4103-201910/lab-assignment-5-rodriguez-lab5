class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      render json:{message: 'Success Creating'}
    else
      render json:{message: 'Failure Creating'}
    end
  end

  def update
      if @ticket.update(ticket_params)
        render json:{message: 'Success Updating'}
      else
        render json:{message: 'Failure Updating'}
      end
  end


  def destroy
    if @ticket.destroy
      render json:{message: 'Success Destroying'}
    else
      render json:{message: 'Failure Destroying'}  
    end
  end

  def index
    @ticket = Ticket.all 
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.fetch(:ticket, {})
    end
end
