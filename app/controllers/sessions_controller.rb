require 'signet/oauth_2/client'
require 'faraday'

class SessionsController < ApplicationController

  def google
    token = params[:token]
    user_data = fetch_google_user_data(token)
    user = User.find_or_create_by(email: user_data[:email]) do |u|
      u.name = user_data[:name]
    end
    
    render json: { user: user, token: JwtService.encode(user_id: user.id) }, status: :ok
  end

  private
  
  def fetch_google_user_data(token)
    client = Signet::OAuth2::Client.new(access_token: token)
    connection = Faraday.new(url: 'https://www.googleapis.com') do |faraday|
      faraday.adapter Faraday.default_adapter
    end

    response = connection.get do |req|
      req.url '/oauth2/v3/userinfo'
      req.headers['Authorization'] = "Bearer #{client.access_token}"
    end
    JSON.parse(response.body, symbolize_names: true)
  end
  

  
end
