require 'pry'
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # # Add your routes here
def serialize(object)
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
    launches = Company.find(params[:id])
    launches.destroy
    launches.to_json
  end

  get "/launches" do
   serialize(Launch.all)
  end

  post '/launches' do 
    launches = Launch.create(
      name: params[:name], details: params[:details], success: params[:success], company_id: self.find_company_id(params))
    serialize(launches)
  end

  delete '/launches/:id' do
    launches = Launch.find(params[:id])
    launches.destroy
    launches.to_json
  end
end
