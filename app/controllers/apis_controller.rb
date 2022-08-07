class ApisController < ApplicationController

  def index
    apis = Api.all
    render json: apis.as_json    
  end

  
end
