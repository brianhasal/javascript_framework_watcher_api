class ApisController < ApplicationController

  url_hash = {
    "Vue" => "http:...",
    "Angular.js" => "http:...",
    "Ember.js" => "http:...",
    "Svelte" => "http:...",
    "React" => "http:...",

  }

  def index
    apis = Api.all.order(:id)
    render json: apis.as_json    
  end

  def update
    api = Api.find_by(id: params[:id])
    api.stars = params[:stars] || api.stars
    api.watchers = params[:watchers] || api.watchers
    api.forks = params[:forks] || api.forks
    api.save
    render json: api.as_json
  end

end
