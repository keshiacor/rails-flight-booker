class AddPassengerToBooking < ActiveRecord::Migration[8.1]
  def change
    add_column :bookings, :passenger_id, :integer
    add_foreign_key :bookings, :passengers, column: :passenger_id
    add_column :bookings, :flight_id, :integer
    add_foreign_key :bookings, :flights, column: :flight_id
  end
end
