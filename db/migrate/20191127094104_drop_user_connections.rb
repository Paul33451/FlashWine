class DropUserConnections < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_connections
  end
end
