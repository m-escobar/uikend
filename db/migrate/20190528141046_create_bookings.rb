class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :trip, foreign_key: true
      t.references :user, foreign_key: true
      t.date :deal_date

      t.timestamps
    end
  end
end
