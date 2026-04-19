class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: :departure_airport_code, primary_key: :code
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: :arrival_airport_code, primary_key: :code
  has_many :bookings, dependent: :destroy
end
