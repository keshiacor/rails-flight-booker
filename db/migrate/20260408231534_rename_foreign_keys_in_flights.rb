class RenameForeignKeysInFlights < ActiveRecord::Migration[8.1]
  def change
    rename_column :flights, :departure_airport_id, :departure_airport_code
    rename_column :flights, :arrival_airport_id, :arrival_airport_code
  end
end
