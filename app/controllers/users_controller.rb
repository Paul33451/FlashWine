class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.where.not(id: current_user.id).where.not(id: current_user.friends.ids)
    if params[:query].present?
      first_name_query = "first_name @@ :first_name"
      last_name_query = "last_name @@ :last_name"
      email_query = "email @@ :email"
      @users = @users.where(first_name_query, first_name: "%#{params[:query][:first_name]}%") unless params[:query][:first_name].blank?
      @users = @users.where(last_name_query, last_name: "%#{params[:query][:last_name]}%") unless params[:query][:last_name].blank?
      @users = @users.where(email_query, email: "%#{params[:query][:email]}%") unless params[:query][:email].blank?
    end
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
