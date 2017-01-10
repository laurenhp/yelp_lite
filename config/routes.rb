Rails.application.routes.draw do
  # Routes for the Restaurantdetail resource:
  # CREATE
  get "/restaurantdetails/new", :controller => "restaurantdetails", :action => "new"
  post "/create_restaurantdetail", :controller => "restaurantdetails", :action => "create"

  # READ
  get "/restaurantdetails", :controller => "restaurantdetails", :action => "index"
  get "/restaurantdetails/:id", :controller => "restaurantdetails", :action => "show"

  # UPDATE
  get "/restaurantdetails/:id/edit", :controller => "restaurantdetails", :action => "edit"
  post "/update_restaurantdetail/:id", :controller => "restaurantdetails", :action => "update"

  # DELETE
  get "/delete_restaurantdetail/:id", :controller => "restaurantdetails", :action => "destroy"
  #------------------------------

  # Routes for the Restuarant resource:
  # CREATE
  get "/restuarants/new", :controller => "restuarants", :action => "new"
  post "/create_restuarant", :controller => "restuarants", :action => "create"

  # READ
  get "/restuarants", :controller => "restuarants", :action => "index"
  get "/restuarants/:id", :controller => "restuarants", :action => "show"

  # UPDATE
  get "/restuarants/:id/edit", :controller => "restuarants", :action => "edit"
  post "/update_restuarant/:id", :controller => "restuarants", :action => "update"

  # DELETE
  get "/delete_restuarant/:id", :controller => "restuarants", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
