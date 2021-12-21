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
  get "/launches" do
   serialize(Launch.all)
  end

  post '/launches' do
    launches = Launch.create(params)
    launches.to_json
  end

  delete '/launches/:id' do
    launches = Launch.find(params[:id])
    launches.destroy
    launches.to_json
  end
end
