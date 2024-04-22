Rails.application.routes.draw do
  get("/", {:controller => "home", :action => "home_screen"})
  get("/dice/:number_of_dice/:sides",{:controller => "home", :action => "roll"})
end
