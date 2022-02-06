class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.create comment_params

    @post = Post.find params[:post_id]
    @post.comments << @comment
    @comment.save
    redirect_to post_path(@post)
  end

  def show
    @comment = Comment.find params[:id]
  end

  def edit
    @comment = Comment.find params[:id]
  end

  def update
    comment = Comment.find params[:id]
    comment.update! comment_params   # use strong params from create
    redirect_to comment_path(params[:id])
  end

  def destroy
    Comment.destroy params[:id]
    redirect_to comments_path
  end

  private

  def comment_params
    params.permit(:content, :post_id)
  end
end
