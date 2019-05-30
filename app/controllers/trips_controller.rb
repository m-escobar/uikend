class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_trip, only: [:show, :edit, :update]

  def index
    # @trips = Trip.new
    
    #First plays Search 
    # raise
    if params[:query].present?
      trips = Trip.where("place ILIKE ?", "%#{params[:query]}%")
    else
      trips = Trip.where("capacity > 0")
    end
    #Exclude Trips with no Capacity or with all Seats over
    @trips = trips.select { |t| t.bookings.count != t.capacity }
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.photo == false
      @trip.photo = 'trip_logo'
    end

    if @trip.save
      redirect_to @trip, notice: 'Pacote criado com sucesso.'
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
    if @trip.bookings.count == 0 && current_user == @trip.user
      render :edit
    else
      redirect_to @trip, notice: current_user != @trip.user ? 'Usuario indevido' : 'Pacote já possui uma reserva.'
    end
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    if @trip.save
        redirect_to @trip, notice: 'Pacote editado com sucesso.'
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
