class Question < ApplicationRecord
  belongs_to :quiz
  has_many :options
  has_many :answers, through: :options
end
