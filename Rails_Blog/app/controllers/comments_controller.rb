class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @post = @Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end
  def comment_params
        params.require(:comment).permit(:user_id, :post_id, :etc)
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
