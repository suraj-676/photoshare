class PostsController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show, :post]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if params[:post][:image].present?
      # Forward the uploaded image on to Cloudinary (using the gem):
      response = Cloudinary::Uploader.upload params[:post][:image]
      p response  # so we can see what the response looks like
      @post.image = response["public_id"] # add to the item we are saving
    end  # upload check
    @post.user_id = @current_user.id
    @post.save
    # to do :checkvalidation and show errors on form (mixtapes controller)
    redirect_to posts_path
  end

  def index
    @posts = Post.all.where(user_id: @current_user.id)
  end

  def show
    @post = Post.find params[:id]
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update! post_params   # use strong params from create
    if params[:post][:image].present?
      response = Cloudinary::Uploader.upload params[:post][:image]
      p response
      post.image = response["public_id"]
    end
    post.user_id = @current_user.id
    post.save
    redirect_to post_path(params[:id])
  end

  def destroy
    Post.destroy params[:id]
    redirect_to posts_path  # back to index
  end

  private

  def post_params
    params.require(:post).permit(:comment, :title, :description, :image)
  end
end
