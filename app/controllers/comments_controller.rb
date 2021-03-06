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
    @comment.user_id = @current_user.id

    @comment.save
    redirect_to post_path(@post)
  end

  def show
    @comment = Comment.find params[:id]
  end

  def edit
    comments = Comment.find params[:id]
    redirect_to comment_path
  end

  def update
    comment = Comment.find params[:id]
    comment.update! comment_params   # use strong params from create
    redirect_to comment_path(params[:id])
  end

  def destroy
    # Perform the lookup
    comment = Comment.find(params[:id])

    # Destroy/delete the record
    comment.destroy

    #redirect to post
    redirect_to posts_path
  end

  private

  def comment_params
    params.permit(:content, :post_id)
  end
end
