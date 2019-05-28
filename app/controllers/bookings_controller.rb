class BookingsController < ApplicationController
  before_action :set_booking, only: :show

  def new
    @booking = Booking.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @booking = Booking.new
    @booking.user = current_user
    @booking.trip = Trip.find(params[:trip_id])
    @booking.deal_date = Time.now
    if @booking.save
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
