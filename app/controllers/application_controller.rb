class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/launches" do
    launches = Launches.all
    launches.to_json
  end

  post '/launches' do
    launches = Launches.create(params)
    launches.to_json
  end

  delete '/launches/:id' do
    launches = Launches.find(params[:id])
    launches.destroy
    launches.to_json
  end
end
