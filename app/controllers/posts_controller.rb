class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    Post.create! post_params
    redirect_to posts_path
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update! work_params   # use strong params from create
    redirect_to post_path(params[:id])
  end

  def destroy
    Post.destroy params[:id]
    redirect_to posts_path  # back to index
  end

  private

  def post_params
    params.require(:post).permit(:image)
  end
end
