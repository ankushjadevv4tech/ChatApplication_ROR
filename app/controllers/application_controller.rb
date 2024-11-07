class ApplicationController < ActionController::API
  def current_user
    @current_user ||= User.find(decoded_token[:user_id]) if decoded_token
  end

  # Token decoding method
  def decoded_token
    if request.headers['Authorization'].present?
      token = request.headers['Authorization'].split(' ').last
      begin
        JwtService.decode(token)
      rescue JWT::DecodeError
        nil
      end
    end
  end

  # Authentication check before any action
  def authenticate_user!
    render json: { error: 'Not Authorized' }, status: :unauthorized unless current_user
  end
end
