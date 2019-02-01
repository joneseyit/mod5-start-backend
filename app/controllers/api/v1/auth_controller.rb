class Api::V1::AuthController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(username: user_login_params[:username])
    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      # render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        render json: { user: @user.username, token: token, id: @user.id }, status: :accepted
    else
      render json: { error: "Either your usename or password didn't have any street cred. Try again."}, status: :unauthorized
    end
  end

  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end
