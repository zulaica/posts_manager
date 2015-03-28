class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.published = Time.now
    @comment.user = current_user
    if @comment.save
      flash[:notice] = "Your comment has been successfully added, " + current_user.username + "!"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:text)
  end
end
