class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
  
      @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: { error: 'Said user could not be created :('}, status: :not_acceptable
      end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :email, :name)
  end
end
