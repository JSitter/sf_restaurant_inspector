require 'inspections'
class WelcomeController < ApplicationController
  def index
  end

  def search
    
    response = Inspections.get_by_name(params[:name])
    
    render :json => response
  end
end
