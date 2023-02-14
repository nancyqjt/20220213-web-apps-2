class CompaniesController < ApplicationController

  # TODO:
  def index
    #get my data in
    @companies = Company.all 
  
  end

  def show
    @company = Company.find_by({ "id" => params["id"] })
    # render html file views/companies/show.html.erb
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company["name"] = params["company"]["name"]
    @company["city"] = params["company"]["city"]
    @company["state"] = params["company"]["state"]
    @company.save
    redirect_to "/companies"
  end

end
