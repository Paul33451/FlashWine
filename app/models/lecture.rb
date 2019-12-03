class Lecture < ApplicationRecord
  has_many :infos, dependant: :destroy
  has_many :quizzes
  validates :title, presence: true
end
