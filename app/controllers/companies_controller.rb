class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])

    @aircrafts = @company.aircrafts
    @cities = @company.cities
  end

end
