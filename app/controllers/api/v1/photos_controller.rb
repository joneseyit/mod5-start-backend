class Api::V1::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render json: @photos
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      render json: @photo
    else
      render json: {error: "Couldn't create photo :("}
    end
  end


end
