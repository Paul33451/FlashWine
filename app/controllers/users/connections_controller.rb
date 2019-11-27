class Users::ConnectionsController < ApplicationController

 def index
  # @connections = current_user.connections
  @friends = []
  @connections = current_user.connections.map do |connection|
    connection.users.where.not(id: current_user.id).ids.join.to_i
  end
  @connections.map do |friend|
    @friends << User.find(friend)
  end
 end

end
