class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.where.not(id: current_user.id).where.not(id: current_user.friends.ids)
  end

  def add
    @user = User.find(params[:user_id])
    current_user.friend_request(@user)
  end

  def accept
    @target = User.find(params[:user_id])
    current_user.accept_request(@target)
  end

  def reject
    @target = User.find(params[:user_id])
    current_user.decline_request(@target)
  end

  def delete
    @target = User.find(params[:user_id])
    current_user.remove_friend(@target)
  end
end
