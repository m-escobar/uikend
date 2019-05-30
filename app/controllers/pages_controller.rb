class PagesController < ApplicationController
  def dashboard
    @my_booked_trips = current_user.bookings
    @my_offered_trips = current_user.trips
  end
end
