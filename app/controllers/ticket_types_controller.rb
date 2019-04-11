class TicketTypesController < ApplicationController
  before_action :set_ticket_type, only: [:show, :edit, :update, :destroy]

   def create
    @ticket_type = TicketType.new(ticket_type_params)
    if @ticket_type.save
      render json:{message: 'Success Creating'}
    else
      render json:{message: 'Failure Creating'}
    end
  end

  def update
      if @ticket_type.update(ticket_type_params)
        render json:{message: 'Success Updating'}
      else
        render json:{message: 'Failure Updating'}
      end
  end


  def destroy
    if @ticket_type.destroy
      render json:{message: 'Success Destroying'}
    else
      render json:{message: 'Failure Destroying'}  
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_type
      @ticket_type = TicketType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_type_params
      params.fetch(:ticket_type, {})
    end
end
