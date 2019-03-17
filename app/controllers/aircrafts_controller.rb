class AircraftsController < ApplicationController
  def index
    @aircrafts = Aircraft.all
  end

  def show
    @aircraft = Aircraft.find(params[:id])

    @companies = @aircraft.companies
    @cities = @aircraft.cities
  end
end
