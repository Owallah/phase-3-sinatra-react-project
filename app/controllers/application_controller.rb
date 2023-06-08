class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/" do
    # arts = Art.all
    # arts.to_json
    { message: "Good luck with your project!" }.to_json
  end

  get "/arts" do
    arts = Art.all
    arts.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  get "/arts/:id" do
    arts = Art.find(params[:id])
    arts.to_json(include: :artist)
    # { message: "Good luck with your project!" }.to_json
  end

  get "/artists" do
    artists = Artist.all
    artists.to_json
    # { message: "Good luck with your project!" }.to_json
  end

end
