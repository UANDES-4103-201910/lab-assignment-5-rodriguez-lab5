class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def create
    @user = User.new(user_params)
    if @user.save
      render json:{message: 'Success Creating'}
    else
      render json:{message: 'Failure Creating'}
    end
  end

  def update
      if @user.update(user_params)
        render json:{message: 'Success Updating'}
      else
        render json:{message: 'Failure Updating'}
      end
  end


  def destroy
    if @user.destroy
      render json:{message: 'Success Destroying'}
    else
      render json:{message: 'Failure Destroying'}  
    end
  end
  
  def user_with_most_tickets
    usersall = User.all
    data = {}
    usersall.each do |x|
      sum = 0
      x.orders.each do |y|
        y.ticket.each do |z|
          sum = sum + 1
      data.push([sum, x.name])

    #order
    mm = [0, 0]
    data.each do |x|
    if x[0] > mm[0]
      mm = x
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.fetch(:user, {})
    end
end
