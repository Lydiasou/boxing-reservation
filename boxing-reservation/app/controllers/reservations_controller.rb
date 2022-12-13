class ReservationsController < ApplicationController
  before_action :set_session_id, only: %i[new create]
  skip_before_action :authenticate_user!

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.session = @session
    @reservation.save
    redirect_to session_path
  end

  private

  def set_session_id
    @session = Session.find(params[:session_id])
  end

  def reservation_params
    params.require(:reservation).permit(:total_price)
  end
end
