class CommentsController < ApplicationController
  def new
    @comment = Comment.new
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

  def create
    Comment.create! comment_params
    redirect_to comments_path
  end

  def destroy
    Comment.destroy params[:id]
    redirect_to comments_path
  end
end
