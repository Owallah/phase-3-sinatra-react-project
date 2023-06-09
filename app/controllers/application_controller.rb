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
    arts.to_json(include: :artist)
    # { message: "Good luck with your project!" }.to_json
  end

  post '/art' do
    art = Art.create(
      title: params[:title],
      artist_id: params[:artist_id],
      review_id: params[:review_id],
      image_url: params[:image_url],
      description: params[:description]
    )

    art.to_json
  end

  get "/arts/:id" do
    arts = Art.find(params[:id])
    arts.to_json(include: :artist, include: :reviews)
    # { message: "Good luck with your project!" }.to_json
  end

  patch "/arts/:id" do
    art = Art.find(params[:id])
    art.update(
      review_id: params[:review_id]
    )
    art.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  delete "/arts/:id" do
    art = Art.find(params[:id])
    art.destroy
    art.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  # Artists

  get "/artists" do
    artists = Artist.all
    artists.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  get "/artists/:id" do
    artists = Artist.find(params[:id])
    artists.to_json(include: :arts)
    # { message: "Good luck with your project!" }.to_json
  end

  post "/artists" do
    artist = Artist.create(
      name: params[:name],
      country_of_origin: params[:country_of_origin],
      avatar_url: params[:avatar_url]
    )
    artist.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  delete "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.destroy
    artist.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  # Users

  post "/users" do
    user = Viewer.create(
      name: params[:name],
      country_of_origin: params[:country_of_origin],
      profile_pic_url: params[:profile_pic_url]
    )
    user.to_json
    # { message: "Good luck with your project!" }.to_json
  end

  post "/reviews" do
    review = Review.create(
      star_rating: params[:star_rating],
      comments: params[:comments],
      viewer_id: params[:viewer_id],
      art_id: params[:art_id]
    )
    review.to_json
  end

end
