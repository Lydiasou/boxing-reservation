class ReservationsController < ApplicationController
  #before_action :set_bootcamp_id, only: %i[new create]
  # before_action :set_reservation, only: %i[new create]
  skip_before_action :authenticate_user!

  def index
    @reservation = Reservation.all
  end

  def new
    @bootcamp = Bootcamp.find(params[:bootcamp_id])
    @reservation = Reservation.new
  end

  def create
    @user = current_user
    @bootcamp = Bootcamp.find(params[:bootcamp_id])
    raise
    @reservation = Reservation.new(reservation_params)
    @reservation.bootcamp = @bootcamp
    @reservation.total_price = @bootcamp.price
    @reservation.user = @user
    @reservation.save
    redirect_to bootcamps_path
  end

  private

 #def set_bootcamp_id
  #  @bootcamp = Bootcamp.find(params[:bootcamp_id])
 #end

 #def set_reservation
 # @reservation = Reservation.find(params[:id])
 #end

  def reservation_params
    params.require(:reservation).permit(:first_name)
  end
end
