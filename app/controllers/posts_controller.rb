class PostsController < ApplicationController
  # load_and_authorize_resource
  def index
    @user = current_user
    puts "++++++++++++++++++++++++++++++++++++++++++"
    # @user = User.find(params[:user_id])
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

  private

  def post_params_from_input
    params.require(:post).permit(:title, :text)
  end
end
