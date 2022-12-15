class ReservationsController < ApplicationController
  # before_action :set_session_id, only: %i[new create]
  skip_before_action :authenticate_user!

  def index
    @reservation = Reservation.all
  end

  def new
    @session = Session.find(params[:session_id])
    @reservation = Reservation.new
  end

  def create
    @user = current_user
    @session = Session.find(params[:session_id])
    @reservation = Reservation.new
    @reservation.session = @session
    @reservation.total_price = @session.price
    @reservation.user = @user
    if @reservation.save
      redirect_to sessions_path
    end
  end

  # private
  # def set_session_id
  #   @session = Session.find(params[:session_id])
  # end

  # def reservation_params
  #   params.require(:reservation).permit(:total_price)
  # end
end
