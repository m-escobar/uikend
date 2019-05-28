class ApplicationController < ActionController::Base
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.new
  end

end
