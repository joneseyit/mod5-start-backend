class Api::V1::PhotosController < ApplicationController
  #AIzaSyDPH2QilxUFyLMcPpiiDFrM-xT9UcGa1hU googlemaps api

  def index
    @photos = Photo.all
    render json: @photos
  end

  def create
    byebug
    @photo = Photo.new(photo_params)
    @photo.img = url_for(@photo.picture)
    if @photo.save
      render json: @photo
    else
      render json: {error: "Couldn't create photo :("}
    end
  end

  private
  def photo_params
    params.permit(:title, :caption, :location, :img, :picture, :user_id)
  end

end
