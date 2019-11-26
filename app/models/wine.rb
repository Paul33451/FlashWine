class Wine < ApplicationRecord
  has_many :reviews
  validates :name, uniqueness: { scope: :year}
end
