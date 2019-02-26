class BookingsController < ApplicationController
  def index
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = User.find(params[:user_id])
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end

end
