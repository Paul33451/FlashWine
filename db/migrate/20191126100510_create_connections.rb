class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.boolean :progress

      t.timestamps
    end
  end
end
