class CreateUserConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :user_connections do |t|
      t.references :user, foreign_key: true
      t.references :connection, foreign_key: true

      t.timestamps
    end
  end
end
