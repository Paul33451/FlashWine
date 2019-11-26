class Connection < ApplicationRecord
  has_many :user_connections, dependent: :destroy
  has_many :users, through: :user_connections, dependent: :destroy
end
