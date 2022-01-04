require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # # Add your routes here
def include_company(object)
  object.to_json(
  include: {
    company: {
      only: [
        :company_name
      ]
    }
  }
)
end
def find_company_id(params)
  company = Company.find_by(company_name: params[:companyName])
  company.id
end

  get '/companies' do
    companies = Company.all
    companies.to_json
  end

  post '/companies' do
    company = Company.create(params)
    company.to_json
  end
  delete '/companies/:id' do
    company = Company.find(params[:id])
    company.destroy
    company.to_json
 
  end

  get "/launches" do
    include_company(Launch.all)
  end

  post '/launches' do 
    launches = Launch.create(
      name: params[:name], details: params[:details], success: params[:success], flight_number: params[:flightNumber],company_id: find_company_id(params))
      include_company(launches)
  end

  delete '/launches/:id' do
    launches = Launch.find(params[:id])
    launches.destroy
    launches.to_json
  end
end
