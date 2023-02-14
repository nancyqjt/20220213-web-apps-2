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

end
