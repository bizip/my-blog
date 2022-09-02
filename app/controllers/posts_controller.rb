class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @user = current_user
    @post = Post.create(post_params_from_input)
    @post.author = @user
    if @post.save
      flash[:notice] = 'New post created'
      redirect_to user_post_path(@user, @post)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    user = current_user

    @post = Post.find_by(id: params[:id], author_id: params[:user_id])

    if @post.destroy
      flash[:notice] = 'Post deleted!'
    else
      flash[:alert] = 'Error! Please try again later.'
    end
    redirect_to user_posts_path(user)
  end

  private

  def post_params_from_input
    params.require(:post).permit(:title, :text)
  end
end
