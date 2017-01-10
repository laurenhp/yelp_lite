class PostsController < ApplicationController
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(:distinct => true).includes(:review, :users).page(params[:page]).per(10)

    render("posts/index.html.erb")
  end

  def show
    @user = User.new
    @post = Post.find(params[:id])

    render("posts/show.html.erb")
  end

  def new
    @post = Post.new

    render("posts/new.html.erb")
  end

  def create
    @post = Post.new

    @post.review_id = params[:review_id]

    save_status = @post.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/posts/new", "/create_post"
        redirect_to("/posts")
      else
        redirect_back(:fallback_location => "/", :notice => "Post created successfully.")
      end
    else
      render("posts/new.html.erb")
    end
  end

  def edit
    @post = Post.find(params[:id])

    render("posts/edit.html.erb")
  end

  def update
    @post = Post.find(params[:id])

    @post.review_id = params[:review_id]

    save_status = @post.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/posts/#{@post.id}/edit", "/update_post"
        redirect_to("/posts/#{@post.id}", :notice => "Post updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Post updated successfully.")
      end
    else
      render("posts/edit.html.erb")
    end
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    if URI(request.referer).path == "/posts/#{@post.id}"
      redirect_to("/", :notice => "Post deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Post deleted.")
    end
  end
end
