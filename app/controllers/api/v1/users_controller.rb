class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]




  def show
    @user = User.find(params[:id])
    render json: @user.to_json(:include => {:photos => { :include => :tags}})

  end

  def index
    @users = User.all
    render json: @users
  end

  def create
      @user = User.new(user_params)
      if @user.save
        token = encode_token({ user_id: @user.id })
          render json: { user: @user.username, token: token, id: @user.id }, status: :created
      else
        render json: { error: 'Said user could not be created :('}, status: :not_acceptable
      end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :email, :name)
  end
end
