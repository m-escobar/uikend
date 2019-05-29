class BookingsController < ApplicationController
  before_action :set_booking, only: :show

  def new
    @booking = Booking.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @trip = Trip.find(params[:trip_id])
    @booking.trip = @trip
    @booking.deal_date = Time.now
    if @trip.capacity < @trip.bookings.count
      render :new
      raise
    elsif @booking.save
      redirect_to trip_booking_path(@booking.trip, @booking)
    else
      render :new
    end
  end

  def show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
