class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    post = Post.find(params[:post_id])
    author = post.author
    @comment = Comment.new(comment_params_form_input)
    @comment.post = post
    @comment.author = CurrentUser.user

    render :new unless @comment.save

    redirect_to user_post_url(author, post)
  end

  private

  def comment_params_form_input
    params.require(:comment).permit(:text)
  end
end
