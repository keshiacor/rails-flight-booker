class FlightsController < ApplicationController
  def index
    @airports = Airport.order(:code).pluck(:code)
    @dates = Flight.pluck(:departure_time).map(&:to_date).uniq

    if params[:departure_airport_code].present?
      date = Date.parse(params[:departure_time])
      @flights = Flight.where(departure_airport_code: params[:departure_airport_code],
      arrival_airport_code: params[:arrival_airport_code],
      departure_time: date.beginning_of_day..date.end_of_day)

    else
      @flights = Flight.none
    end
  end

  def show
  end

  def search
  end
end
