class Api::V1::PhotosController < ApplicationController
  #AIzaSyDPH2QilxUFyLMcPpiiDFrM-xT9UcGa1hU googlemaps api

  def index
    @photos = Photo.all
    render json: @photos
  end

  def show
    @photo = Photo.find(params[:id])
    render json: @photo
  end

  def search
    @searchedPhotos = Photo.search(search_params.to_h.symbolize_keys)
    render json: @searchedPhotos
  end

  def create
    @photo = Photo.new(photo_params)
    @photo.img = url_for(@photo.picture)
    if @photo.save
      render json: @photo
    else
      render json: { error: "Couldn't create photo :(" }
    end
  end

  private
  def photo_params
    params.permit(:title, :caption, :location, :img, :picture, :user_id, :min_lng, :max_lng, :min_lat, :max_lat, :latitude, :longitude)
  end

  def search_params
    params.permit(:min_lng, :max_lng, :min_lat, :max_lat)
  end

end
