class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])

    @aircrafts = @city.aircrafts
    @companies = @city.companies
  end
end
