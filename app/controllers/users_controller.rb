class UsersController < ApplicationController
  def index; end
  def index
    @users = User.all
  end

  def show; end
  def show
    @user = User.find(params[:id])
  end
end