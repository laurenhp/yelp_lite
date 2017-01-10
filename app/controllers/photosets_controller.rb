class PhotosetsController < ApplicationController
  def index
    @photosets = Photoset.page(params[:page]).per(10)

    render("photosets/index.html.erb")
  end

  def show
    @photo = Photo.new
    @review = Review.new
    @photoset = Photoset.find(params[:id])

    render("photosets/show.html.erb")
  end

  def new
    @photoset = Photoset.new

    render("photosets/new.html.erb")
  end

  def create
    @photoset = Photoset.new

    @photoset.description = params[:description]

    save_status = @photoset.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/photosets/new", "/create_photoset"
        redirect_to("/photosets")
      else
        redirect_back(:fallback_location => "/", :notice => "Photoset created successfully.")
      end
    else
      render("photosets/new.html.erb")
    end
  end

  def edit
    @photoset = Photoset.find(params[:id])

    render("photosets/edit.html.erb")
  end

  def update
    @photoset = Photoset.find(params[:id])

    @photoset.description = params[:description]

    save_status = @photoset.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/photosets/#{@photoset.id}/edit", "/update_photoset"
        redirect_to("/photosets/#{@photoset.id}", :notice => "Photoset updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Photoset updated successfully.")
      end
    else
      render("photosets/edit.html.erb")
    end
  end

  def destroy
    @photoset = Photoset.find(params[:id])

    @photoset.destroy

    if URI(request.referer).path == "/photosets/#{@photoset.id}"
      redirect_to("/", :notice => "Photoset deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Photoset deleted.")
    end
  end
end
