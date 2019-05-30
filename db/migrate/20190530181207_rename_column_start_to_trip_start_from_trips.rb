class RenameColumnStartToTripStartFromTrips < ActiveRecord::Migration[5.2]
  def change
     rename_column :trips, :start, :trip_start
     rename_column :trips, :end, :trip_end
  end
end
