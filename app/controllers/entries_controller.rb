class EntriesController < ApplicationController
  def index
    # find all entries rows
   @entries = Entry.all
    # render entries/index view
    render :template => "entries/index"
  end

  def show
    # find an Entry
    @entry = Entry.find_by({ "id" => params["id"] })
    # find Places for the Entry
    @places = Place.where({ "id" => @entries["place_id"] })
    # render places/show view with details about Places
  end

  def new
    # render view with new Entry form
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
   
    # save Entry row
    @entry.save

    # redirect user
    redirect_to "/places"
  end



end
