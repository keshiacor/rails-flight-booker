class FlightsController < ApplicationController
  def index
    @airports = Airport.all.pluck(:code, :id)
    @dates = Flight.pluck(:departure_time).map(&:to_date).uniq

    if params[:departure_airport_id].present?
      date = Date.parse(params[:departure_date])
      @flights = Flight.where(departure_airport_id: params[:departure_airport_id],
      arrival_airport_id: params[:arrival_airport_id],
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
