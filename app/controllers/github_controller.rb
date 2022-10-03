class GithubController < ApplicationController
  def authorize
    response = HTTP
      .headers("Accept" => "application/json")
      .post("https://github.com/login/oauth/access_token?client_id=#{Rails.application.credentials.github[:client_id]}&client_secret=#{Rails.application.credentials.github[:client_secret]}&code=#{params[:code]}")
    render json: JSON.parse(response.body)
  end

  def profile
    response = HTTP
      .headers("Authorization" => "token #{params[:github_access_token]}")
      .get("https://api.github.com/user")
    render json: JSON.parse(response.body)
  end

  def reactCheck
    response = HTTP.get('https://api.github.com/user/repos')
    render json: JSON.parse(response.body)
  end

  def basicGithub
    response = HTTP
      .get("https://api.github.com")
    render json: JSON.parse(response.body)
  end




end
