class AddDetailsToFlights < ActiveRecord::Migration[8.1]
  def change
      add_column :flights, :flight_number, :string, null: false
      add_column :flights, :departure_airport_id, :string, null: false
      add_column :flights, :arrival_airport_id, :string, null: false
      add_column :flights, :departure_time, :datetime, null: false
      add_column :flights, :flight_duration, :integer, null: false
  end
end
