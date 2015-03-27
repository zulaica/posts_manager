class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.published = Time.now
    @comment.user_id = current_user.id
    if @comment.save
      flash[:notice] = "Your comment has been successfully added!"# + User.find(@comment.user_id).username
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
