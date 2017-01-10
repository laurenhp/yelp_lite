class RestuarantsController < ApplicationController
  def index
    @restuarants = Restuarant.page(params[:page]).per(10)

    render("restuarants/index.html.erb")
  end

  def show
    @restuarant = Restuarant.find(params[:id])

    render("restuarants/show.html.erb")
  end

  def new
    @restuarant = Restuarant.new

    render("restuarants/new.html.erb")
  end

  def create
    @restuarant = Restuarant.new

    @restuarant.name = params[:name]
    @restuarant.rating = params[:rating]
    @restuarant.number_of_review = params[:number_of_review]
    @restuarant.details_id = params[:details_id]

    save_status = @restuarant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restuarants/new", "/create_restuarant"
        redirect_to("/restuarants")
      else
        redirect_back(:fallback_location => "/", :notice => "Restuarant created successfully.")
      end
    else
      render("restuarants/new.html.erb")
    end
  end

  def edit
    @restuarant = Restuarant.find(params[:id])

    render("restuarants/edit.html.erb")
  end

  def update
    @restuarant = Restuarant.find(params[:id])

    @restuarant.name = params[:name]
    @restuarant.rating = params[:rating]
    @restuarant.number_of_review = params[:number_of_review]
    @restuarant.details_id = params[:details_id]

    save_status = @restuarant.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/restuarants/#{@restuarant.id}/edit", "/update_restuarant"
        redirect_to("/restuarants/#{@restuarant.id}", :notice => "Restuarant updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Restuarant updated successfully.")
      end
    else
      render("restuarants/edit.html.erb")
    end
  end

  def destroy
    @restuarant = Restuarant.find(params[:id])

    @restuarant.destroy

    if URI(request.referer).path == "/restuarants/#{@restuarant.id}"
      redirect_to("/", :notice => "Restuarant deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Restuarant deleted.")
    end
  end
end
