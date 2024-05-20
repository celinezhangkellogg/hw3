class PlacesController < ApplicationController
  def index
    # find all Places rows
   
    # render companies/index view
    render :template => "places/index"

  end


end
