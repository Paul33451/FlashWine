class Quiz < ApplicationRecord
  belongs_to :wine, optional: true
  has_many :questions
  has_many :options, through: :questions
  has_many :answers, through: :options
end
