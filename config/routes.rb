Rails.application.routes.draw do
  # Routes for the Photoset resource:
  # CREATE
  get "/photosets/new", :controller => "photosets", :action => "new"
  post "/create_photoset", :controller => "photosets", :action => "create"

  # READ
  get "/photosets", :controller => "photosets", :action => "index"
  get "/photosets/:id", :controller => "photosets", :action => "show"

  # UPDATE
  get "/photosets/:id/edit", :controller => "photosets", :action => "edit"
  post "/update_photoset/:id", :controller => "photosets", :action => "update"

  # DELETE
  get "/delete_photoset/:id", :controller => "photosets", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

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
