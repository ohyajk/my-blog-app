class PostsController < ApplicationController
  def index; end

  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments, :likes)
  end

  def show; end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @comments = @post.comments
  end
end
