class ApplicationController < ActionController::API
  # before_action :authorized

  def encode_token(payload)
    #HEY where do we get the payload from? Maybe the first time they make a password.
    #payload -> { beef: 'steak'}
    JWT.encode(payload, ENV['YEAH'])
    #jwt string :eyJhbGciOiJIUzI1NiJ9
  end

  def auth_header
    #{ 'Authorization': 'Bearer <token> '}
    request.headers['Authorization']
  end

  def decoded_token(token)
    #token -> eyJhbGciOiJIUzI1NiJ9
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, ENV['YEAH'], true, algorithm: 'HS256')
    #JWT.decode => [{beef: steak}, {'alg' => h256}]
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      #decoded_token => [{'user_id' => 2 }, {alg => 'HS256'}]
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Por Favor log in' }, status: :unauthorized unless logged_in?
  end
end
