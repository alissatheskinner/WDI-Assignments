class UsersController < ApplicationController
  before_filter :current_user, only: [:index, :edit, :update]
  before_filter :current_user,   only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
     @user = User.new(params[:user])
    if @user.save
      redirect_to @user 
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @post = @user.posts.new 
    @comment = @user.comments.new
  end

  def edit
     @user = current_user 
  end

  def update
    @user = current_user
      if @user.update_attributes(params[:user])
        flash[:notice] = "Profile updated"
        redirect_to @user 
      else 
        render 'edit'
      end
  end

  def destroy
     @user = current_user
      if @user.destroy
      flash[:notice] = "User destroyed." 
      redirect_to root_path
    end
  end

end
