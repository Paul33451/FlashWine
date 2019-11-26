class Wine < ApplicationRecord
  has_many :reviews
  validates :name, uniqueness: { scope: :year}
  has_many :quizzes
end
