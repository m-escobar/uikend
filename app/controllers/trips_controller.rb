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
    if @trip.save
      redirect_to @trip, notice: 'Trip was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
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
                                 :start, :end)
  end
end
