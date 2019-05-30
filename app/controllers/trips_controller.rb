class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.new
    #Exclui as Trips com Capacity == 0 ou Capacity = Bookings
    trips = Trip.where("capacity > 0")
    @trips = trips.select { |t| t.bookings.count != t.capacity }
    @markers = trips.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        # infoWindow: render_to_string(partial: "infowindow", locals: { trip: trip })
      }
    end
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

  def destroy
    @trip = Trip.find(params[:id])
    if @trip.bookings.count == 0 && current_user == @trip.user
      @trip.destroy
      redirect_to root_path, notice: 'Pacote apagado com sucesso.'
    else
      redirect_to @trip, notice: current_user != @trip.user ? 'Usuario indevido' : 'Pacote já possui uma reserva.'
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
