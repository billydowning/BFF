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
    @fan_group = FanGroup.find(params[:fan_group_id])
    @booking = Booking.new(booking_params)
    @booking.fan_group = @fan_group
    @booking.user = current_user
    if @booking.save
      redirect_to user_booking_path(current_user, @booking)
    else
      render 'fan_groups/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path(current_user, @booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time, :location)
  end

end
