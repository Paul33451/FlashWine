class Lecture < ApplicationRecord
  has_many :infos, dependent: :destroy
  has_many :quizzes
  validates :title, presence: true
end
