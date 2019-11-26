class UserConnectionsController < ApplicationController
  def create
    friend = User.find(params[:user_id])
    connection = Connection.create(progress: false)
    user1 = UserConnection.create(user: current_user, connection: connection)
    user2 = UserConnection.create(user: friend, connection: connection)
  end

  private

end
