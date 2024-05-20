Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
get("/places", :controller => "places", :action => "index")
get("/places/new", :controller => "places", :action => "new")
get("/places/:id", :controller => "places", :action => "show")
post("/places", :controller => "places", :action => "create")

get("/entries/new", :controller => "entries", :action => "new")
get("/entries/:id", :controller => "entries", :action => "show")
post("/entries", :controller => "entries", :action => "create")

end
