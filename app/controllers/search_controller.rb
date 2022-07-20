class SearchController < ApplicationController
  def index
    response = HTTP.get("http://api.giphy.com/v1/gifs/search?q=#{params[:search_term]}&api_key=#{Rails.application.credentials.giphy_api[:api_key]}")
    render json: response.parse(:json)
  end
end
