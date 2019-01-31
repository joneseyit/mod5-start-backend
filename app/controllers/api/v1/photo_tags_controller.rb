class PhotoTagsController < ApplicationController
  def index
    @photo_tags = PhotoTag.all
    render json: @photo_tags
  end

  def create
    @photo_tag = PhotoTag.new(photo_tag_params)
    if @photo_tag.save
      render json: @photo_tag, status: :accepted
    else
      render json: { error: "Sorry there - didn't complete."}
    end
  end
  
end
