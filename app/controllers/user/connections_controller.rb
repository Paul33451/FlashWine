class User::ConnectionsController < ApplicationController

 def index
  @connections = current_user.connections
 end

end
