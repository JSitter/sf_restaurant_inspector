class WelcomeController < ApplicationController
  def index
  end

  def search
    
    #@api_location = 'https://data.sfgov.org/resource/sipz-fjte.json?business_name=' + cookies[:q].to_s
    $response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')
    #@response = HTTParty.get(@api_location)
    data = {"hello": params[:q], "cookies": cookies[:q]}
    render :json => response
  end
end
