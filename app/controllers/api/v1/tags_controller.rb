class TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render json: @tag
    else
      render json: { error: "Hey there - we couldn't create the tag."}
    end
  end
end
