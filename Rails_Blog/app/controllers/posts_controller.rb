class PostsController < ApplicationController
  # before_filter :current_user, only: [:create, :destroy]
  # before_filter :current_user,   only: :destroy

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(content: params[:content])
    if @post.save
    flash[:notice] = "Blog post created!"
    redirect_to current_user 
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
