class PlacesController < ApplicationController
  def index
    # find all places rows
   @places = Place.all
    # render places/index view
    render :template => "places/index"
  end

  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find Entries for the Place
    @entries = Entry.where({ "place_id" => @place["id"] })
    # render places/show view with details about Places
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]
   
    # save Place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

 



end
