class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.new
  end
end
