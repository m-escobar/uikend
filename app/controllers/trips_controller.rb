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
    @trip = Trip.find(params[:id])
    if @trip.bookings.count == 0
      render :edit
    else
      redirect_to @trip, notice: 'Trip was already booked.'
    end
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    if @trip.save
        redirect_to @trip, notice: 'Trip was successfully edited.'
    else
        render :edit
    end
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :description, :place,
                                 :capacity, :hotel, :schedule, :price,
                                 :start, :end, :photo)
  end
end
