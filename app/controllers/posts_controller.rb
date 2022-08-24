class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
  end

  def new; end

  def show
    @post = Post.find(params[:id])
  end
end
