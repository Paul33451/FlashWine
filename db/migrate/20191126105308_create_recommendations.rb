class CreateRecommendations < ActiveRecord::Migration[5.2]
  def change
    create_table :recommendations do |t|
      t.references :wine, foreign_key: true
      t.references :sender
      t.references :recipient

      t.timestamps
    end

    add_foreign_key :recommendations, :users, column: :sender_id, primary_key: :id
    add_foreign_key :recommendations, :users, column: :recipient_id, primary_key: :id
  end
end
