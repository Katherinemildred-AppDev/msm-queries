Rails.application.routes.draw do
  
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller=>"directors", :action=>"index"})

  get("/directors/eldest", {:controller=>"directors", :action=>"wisest"})

  get("/directors/youngest", {:controller=>"directors", :action=>"baby"})

  get("/directors/:an_id", {:controller=>"directors", :action=>"director_details"})

  get("/movies",{:controller=>"movies",:action=>"index"})

  get("/movies/:an_id",{:controller=>"movies",:action=>"details"})

  get("/actors", {:controller=>"actors", :action=>"index"})

  get("/actors/:an_id", {:controller=>"actors", :action=>"details"})
  
end
