class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.published = Time.now
    if @comment.save
      flash[:notice] = "Your comment has been successfully added, " + @comment.author
      redirect_to post_path(@comment.post)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
