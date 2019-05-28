class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to @trip, notice: 'Trip was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @trip = Trip.find(:id)
    if @trip.bookings.count = 0
      @trip.update(trip_params)
      if @trip.save
        redirect_to @trip, notice: 'Trip was successfully edited.'
      else
        render :edit
      end
    else
      redirect_to @trip, notice: 'Trip was already booked.'
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :description, :place,
                                 :capacity, :hotel, :schedule, :price,
                                 :start, :end)
  end
end
